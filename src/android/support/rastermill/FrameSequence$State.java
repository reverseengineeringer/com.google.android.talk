package android.support.rastermill;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;

class FrameSequence$State
{
  private long mNativeState;
  
  public FrameSequence$State(long paramLong)
  {
    mNativeState = paramLong;
  }
  
  public void destroy()
  {
    if (mNativeState != 0L)
    {
      FrameSequence.access$000(mNativeState);
      mNativeState = 0L;
    }
  }
  
  public long getFrame(int paramInt1, Bitmap paramBitmap, int paramInt2)
  {
    if ((paramBitmap == null) || (paramBitmap.getConfig() != Bitmap.Config.ARGB_8888)) {
      throw new IllegalArgumentException("Bitmap passed must be non-null and ARGB_8888");
    }
    if (mNativeState == 0L) {
      throw new IllegalStateException("attempted to draw destroyed FrameSequenceState");
    }
    return FrameSequence.access$100(mNativeState, paramInt1, paramBitmap, paramInt2);
  }
}

/* Location:
 * Qualified Name:     android.support.rastermill.FrameSequence.State
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */