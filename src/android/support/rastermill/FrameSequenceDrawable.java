package android.support.rastermill;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;

public class FrameSequenceDrawable
  extends Drawable
  implements Animatable, Runnable
{
  private static final long DEFAULT_DELAY_MS = 100L;
  public static final int LOOP_DEFAULT = 3;
  public static final int LOOP_INF = 2;
  public static final int LOOP_ONCE = 1;
  private static final long MIN_DELAY_MS = 20L;
  private static final int STATE_DECODING = 2;
  private static final int STATE_READY_TO_SWAP = 4;
  private static final int STATE_SCHEDULED = 1;
  private static final int STATE_WAITING_TO_SWAP = 3;
  private static FrameSequenceDrawable.BitmapProvider sAllocatingBitmapProvider = new FrameSequenceDrawable.1();
  private static HandlerThread sDecodingThread;
  private static Handler sDecodingThreadHandler;
  private static final Object sLock = new Object();
  private Bitmap mBackBitmap;
  private BitmapShader mBackBitmapShader;
  private final FrameSequenceDrawable.BitmapProvider mBitmapProvider;
  private Runnable mCallbackRunnable = new FrameSequenceDrawable.3(this);
  private boolean mCircleMaskEnabled;
  private int mCurrentLoop;
  private Runnable mDecodeRunnable = new FrameSequenceDrawable.2(this);
  private boolean mDestroyed = false;
  private final FrameSequence mFrameSequence;
  private final FrameSequence.State mFrameSequenceState;
  private Bitmap mFrontBitmap;
  private BitmapShader mFrontBitmapShader;
  private long mLastSwap;
  private final Object mLock = new Object();
  private int mLoopBehavior = 3;
  private int mNextFrameToDecode;
  private long mNextSwap;
  private FrameSequenceDrawable.OnFinishedListener mOnFinishedListener;
  private final Paint mPaint;
  private final Rect mSrcRect;
  private int mState;
  
  public FrameSequenceDrawable(FrameSequence paramFrameSequence)
  {
    this(paramFrameSequence, sAllocatingBitmapProvider);
  }
  
  public FrameSequenceDrawable(FrameSequence paramFrameSequence, FrameSequenceDrawable.BitmapProvider paramBitmapProvider)
  {
    if ((paramFrameSequence == null) || (paramBitmapProvider == null)) {
      throw new IllegalArgumentException();
    }
    mFrameSequence = paramFrameSequence;
    mFrameSequenceState = paramFrameSequence.createState();
    int i = paramFrameSequence.getWidth();
    int j = paramFrameSequence.getHeight();
    mBitmapProvider = paramBitmapProvider;
    mFrontBitmap = acquireAndValidateBitmap(paramBitmapProvider, i, j);
    mBackBitmap = acquireAndValidateBitmap(paramBitmapProvider, i, j);
    mSrcRect = new Rect(0, 0, i, j);
    mPaint = new Paint();
    mPaint.setFilterBitmap(true);
    mFrontBitmapShader = new BitmapShader(mFrontBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    mBackBitmapShader = new BitmapShader(mBackBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    mLastSwap = 0L;
    mNextFrameToDecode = -1;
    mFrameSequenceState.getFrame(0, mFrontBitmap, -1);
    initializeDecodingThread();
  }
  
  private static Bitmap acquireAndValidateBitmap(FrameSequenceDrawable.BitmapProvider paramBitmapProvider, int paramInt1, int paramInt2)
  {
    paramBitmapProvider = paramBitmapProvider.acquireBitmap(paramInt1, paramInt2);
    if ((paramBitmapProvider.getWidth() < paramInt1) || (paramBitmapProvider.getHeight() < paramInt2) || (paramBitmapProvider.getConfig() != Bitmap.Config.ARGB_8888)) {
      throw new IllegalArgumentException("Invalid bitmap provided");
    }
    return paramBitmapProvider;
  }
  
  private void checkDestroyedLocked()
  {
    if (mDestroyed) {
      throw new IllegalStateException("Cannot perform operation on recycled drawable");
    }
  }
  
  private static void initializeDecodingThread()
  {
    synchronized (sLock)
    {
      if (sDecodingThread != null) {
        return;
      }
      HandlerThread localHandlerThread = new HandlerThread("FrameSequence decoding thread", 10);
      sDecodingThread = localHandlerThread;
      localHandlerThread.start();
      sDecodingThreadHandler = new Handler(sDecodingThread.getLooper());
      return;
    }
  }
  
  private void scheduleDecodeLocked()
  {
    mState = 1;
    mNextFrameToDecode = ((mNextFrameToDecode + 1) % mFrameSequence.getFrameCount());
    sDecodingThreadHandler.post(mDecodeRunnable);
  }
  
  public void destroy()
  {
    Bitmap localBitmap1 = null;
    if (mBitmapProvider == null) {
      throw new IllegalStateException("BitmapProvider must be non-null");
    }
    synchronized (mLock)
    {
      checkDestroyedLocked();
      Bitmap localBitmap2 = mFrontBitmap;
      mFrontBitmap = null;
      if (mState != 2)
      {
        localBitmap1 = mBackBitmap;
        mBackBitmap = null;
      }
      mDestroyed = true;
      mBitmapProvider.releaseBitmap(localBitmap2);
      if (localBitmap1 != null) {
        mBitmapProvider.releaseBitmap(localBitmap1);
      }
      return;
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    int j = 1;
    for (;;)
    {
      synchronized (mLock)
      {
        checkDestroyedLocked();
        if ((mState == 3) && (mNextSwap - SystemClock.uptimeMillis() <= 0L)) {
          mState = 4;
        }
        if ((isRunning()) && (mState == 4))
        {
          Object localObject2 = mBackBitmap;
          mBackBitmap = mFrontBitmap;
          mFrontBitmap = ((Bitmap)localObject2);
          localObject2 = mBackBitmapShader;
          mBackBitmapShader = mFrontBitmapShader;
          mFrontBitmapShader = ((BitmapShader)localObject2);
          mLastSwap = SystemClock.uptimeMillis();
          i = j;
          if (mNextFrameToDecode == mFrameSequence.getFrameCount() - 1)
          {
            mCurrentLoop += 1;
            if ((mLoopBehavior == 1) && (mCurrentLoop == 1)) {
              break label308;
            }
            i = j;
            if (mLoopBehavior == 3)
            {
              i = j;
              if (mCurrentLoop == mFrameSequence.getDefaultLoopCount()) {
                break label308;
              }
            }
          }
          if (i != 0) {
            scheduleDecodeLocked();
          }
        }
        else
        {
          if (!mCircleMaskEnabled) {
            break label278;
          }
          ??? = getBounds();
          mPaint.setShader(mFrontBitmapShader);
          float f1 = ((Rect)???).width();
          float f2 = ((Rect)???).height();
          float f3 = Math.min(f1, f2) / 2.0F;
          paramCanvas.drawCircle(f1 / 2.0F, f2 / 2.0F, f3, mPaint);
          return;
        }
        scheduleSelf(mCallbackRunnable, 0L);
      }
      label278:
      mPaint.setShader(null);
      paramCanvas.drawBitmap(mFrontBitmap, mSrcRect, getBounds(), mPaint);
      return;
      label308:
      int i = 0;
    }
  }
  
  protected void finalize()
  {
    try
    {
      mFrameSequenceState.destroy();
      return;
    }
    finally
    {
      super.finalize();
    }
  }
  
  public int getIntrinsicHeight()
  {
    return mFrameSequence.getHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return mFrameSequence.getWidth();
  }
  
  public int getOpacity()
  {
    if (mFrameSequence.isOpaque()) {
      return -1;
    }
    return -2;
  }
  
  public boolean isDestroyed()
  {
    synchronized (mLock)
    {
      boolean bool = mDestroyed;
      return bool;
    }
  }
  
  public boolean isRunning()
  {
    for (;;)
    {
      synchronized (mLock)
      {
        if ((mNextFrameToDecode >= 0) && (!mDestroyed))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void run()
  {
    int j = 0;
    Object localObject1 = mLock;
    int i = j;
    try
    {
      if (mNextFrameToDecode >= 0)
      {
        i = j;
        if (mState == 3)
        {
          mState = 4;
          i = 1;
        }
      }
      if (i != 0) {
        invalidateSelf();
      }
      return;
    }
    finally {}
  }
  
  public void setAlpha(int paramInt)
  {
    mPaint.setAlpha(paramInt);
  }
  
  public final void setCircleMaskEnabled(boolean paramBoolean)
  {
    mCircleMaskEnabled = paramBoolean;
    mPaint.setAntiAlias(paramBoolean);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    mPaint.setColorFilter(paramColorFilter);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    mPaint.setFilterBitmap(paramBoolean);
  }
  
  public void setLoopBehavior(int paramInt)
  {
    mLoopBehavior = paramInt;
  }
  
  public void setOnFinishedListener(FrameSequenceDrawable.OnFinishedListener paramOnFinishedListener)
  {
    mOnFinishedListener = paramOnFinishedListener;
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool = super.setVisible(paramBoolean1, paramBoolean2);
    if (!paramBoolean1) {
      stop();
    }
    while ((!paramBoolean2) && (!bool)) {
      return bool;
    }
    stop();
    start();
    return bool;
  }
  
  public void start()
  {
    if (!isRunning()) {
      synchronized (mLock)
      {
        checkDestroyedLocked();
        if (mState == 1) {
          return;
        }
        mCurrentLoop = 0;
        scheduleDecodeLocked();
        return;
      }
    }
  }
  
  public void stop()
  {
    if (isRunning()) {
      unscheduleSelf(this);
    }
  }
  
  public void unscheduleSelf(Runnable paramRunnable)
  {
    synchronized (mLock)
    {
      mNextFrameToDecode = -1;
      mState = 0;
      super.unscheduleSelf(paramRunnable);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.rastermill.FrameSequenceDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */