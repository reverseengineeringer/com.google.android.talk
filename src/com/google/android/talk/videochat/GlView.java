package com.google.android.talk.videochat;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.media.effect.Effect;
import android.media.effect.EffectUpdateListener;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.Renderer;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.talk.TalkApp;
import com.google.android.videochat.CameraInterface;
import com.google.android.videochat.CameraSpecification;
import com.google.android.videochat.RemoteRenderer;
import com.google.android.videochat.RemoteRenderer.RendererFrameOutputData;
import com.google.android.videochat.Renderer.RendererThreadCallback;
import com.google.android.videochat.Renderer.SelfRendererThreadCallback;
import com.google.android.videochat.RendererManager;
import com.google.android.videochat.SelfRenderer;
import com.google.android.videochat.Size;
import com.google.android.videochat.VideoSpecification;
import com.google.android.videochat.util.GLStopWatch;
import com.google.android.videochat.util.LogUtil;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class GlView
  extends GLSurfaceView
{
  GlViewInitializedCallback mCallback;
  private EffectsController mEffects;
  private EffectsController.StateCallback mEffectsStateCallback;
  private GLRenderer mGLRenderer;
  InitialCameraFrameCallback mInitialCameraFrameCallback;
  private GLStopWatch mRemoteStopWatch = new GLStopWatch("GlView.remote");
  private RendererManager mRenderer;
  private float mSelfBaseXClip;
  private float mSelfBaseYClip;
  private GLStopWatch mSelfStopWatch = new GLStopWatch("GlView.self");
  private VideoAnimator mVideoAnimator;
  
  public GlView(Context paramContext)
  {
    super(paramContext);
  }
  
  public GlView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void drawBgColor(int paramInt)
  {
    GLES20.glClearColor((paramInt >> 16 & 0xFF) / 255.0F, (paramInt >> 8 & 0xFF) / 255.0F, (paramInt & 0xFF) / 255.0F, 1.0F);
    GLES20.glClear(16384);
  }
  
  private void onInitialRemoteFrame() {}
  
  private void onInitialSelfFrame()
  {
    if (mInitialCameraFrameCallback != null) {
      mInitialCameraFrameCallback.onInitialFrame();
    }
    post(new Runnable()
    {
      public void run()
      {
        setBackgroundColor(16777215);
        mVideoAnimator.setSelfFramesAvailable();
      }
    });
  }
  
  private static int surfaceRotationEnumToDegress(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      LogUtil.Logwtf("Talk:GlView", "Bad rotation " + paramInt);
    case 0: 
      return 0;
    case 1: 
      return 90;
    case 2: 
      return 180;
    }
    return 270;
  }
  
  public void createRenderers(GlViewInitializedCallback paramGlViewInitializedCallback, CameraSpecification paramCameraSpecification)
  {
    mRenderer = new RendererManager();
    if (mGLRenderer != null) {
      LogUtil.Logwtf("Talk:GlView", "createRenderer called with mGLRenderer != null");
    }
    mCallback = paramGlViewInitializedCallback;
    mGLRenderer = new GLRenderer(this, paramCameraSpecification);
    setRenderer(mGLRenderer);
    setRenderMode(1);
  }
  
  public void destroyRenderer()
  {
    mGLRenderer.destroyRenderer();
    mRenderer.release();
  }
  
  public int getActiveEffect()
  {
    return mGLRenderer.getActiveEffect();
  }
  
  public Object getActiveEffectParam()
  {
    return mGLRenderer.getActiveEffectParam();
  }
  
  public EffectsController getEffectsController()
  {
    return mEffects;
  }
  
  public Rect getRemoteFrameRect()
  {
    return mVideoAnimator.getRemoteFrameRect();
  }
  
  public RemoteRenderer getRemoteRenderer()
  {
    return mGLRenderer.getRemoteRenderer();
  }
  
  public Rect getSelfFrameRect()
  {
    return mVideoAnimator.getSelfFrameRect();
  }
  
  public SelfRenderer getSelfRenderer()
  {
    return mGLRenderer.getSelfRenderer();
  }
  
  public void hideRemoteFrame()
  {
    mVideoAnimator.setRemoteFrameAlpha(0.0F);
  }
  
  public void hideSelfFrame()
  {
    mVideoAnimator.setSelfFrameAlpha(0.0F);
  }
  
  public void initialize(boolean paramBoolean, InitialCameraFrameCallback paramInitialCameraFrameCallback)
  {
    if (paramBoolean) {
      setBackgroundColor(getContext().getResources().getColor(2131296294));
    }
    mEffects = new EffectsController(this);
    mVideoAnimator = new VideoAnimator(getContext(), paramBoolean);
    mInitialCameraFrameCallback = paramInitialCameraFrameCallback;
    setEGLContextClientVersion(2);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    mVideoAnimator.supplyMainThreadHandler(getHandler());
  }
  
  public void onPause()
  {
    TalkApp.LOGV("Talk:GlView", "GlView.onPause");
    super.onPause();
    SelfRenderer localSelfRenderer = getSelfRenderer();
    if (localSelfRenderer != null) {
      localSelfRenderer.getCamera().suspendCamera();
    }
  }
  
  public void onResume()
  {
    TalkApp.LOGV("Talk:GlView", "GlView.onResume");
    super.onResume();
  }
  
  public void placeFramesInSwappedPositions()
  {
    mVideoAnimator.placeFramesInSwappedPositions(false);
  }
  
  public void placeRemoteFrameInFullscreen()
  {
    mVideoAnimator.placeRemoteFrameInFullscreen();
  }
  
  public void placeSelfFrameInCorner(boolean paramBoolean)
  {
    mVideoAnimator.placeSelfFrameInCorner(paramBoolean);
  }
  
  public void placeSelfFrameInVanity(boolean paramBoolean)
  {
    mVideoAnimator.placeSelfFrameInVanity(paramBoolean);
  }
  
  public void reverseSwapAnimation()
  {
    mVideoAnimator.placeFramesInStandardPositions(true);
  }
  
  void setActiveEffect(final int paramInt, final Object paramObject)
  {
    queueEvent(new Runnable()
    {
      public void run()
      {
        mGLRenderer.setActiveEffect(paramInt, paramObject);
      }
    });
  }
  
  void setSpecialEffectsStateCallback(EffectsController.StateCallback paramStateCallback)
  {
    mEffectsStateCallback = paramStateCallback;
  }
  
  public void showBlackBackground(boolean paramBoolean)
  {
    mVideoAnimator.setBackgroundToBlack(paramBoolean);
  }
  
  public void startSwapAnimation()
  {
    mVideoAnimator.placeFramesInSwappedPositions(true);
  }
  
  public void switchCamera(CameraTracker paramCameraTracker)
  {
    post(new Runnable()
    {
      public void run()
      {
        mVideoAnimator.setSelfFramesUnavailable();
      }
    });
    CameraInterface localCameraInterface = mGLRenderer.getSelfRenderer().getCamera();
    int i = paramCameraTracker.nextCamera(localCameraInterface.getCurrentCameraId());
    localCameraInterface.useCamera(new CameraSpecification(i, paramCameraTracker.getOverrideSizeForCamera(i)));
  }
  
  private class GLRenderer
    implements GLSurfaceView.Renderer
  {
    private boolean mCameraIsOpened;
    private int mCameraTextureName;
    int mCount = 0;
    private int mCurrentEffectId;
    private Object mCurrentEffectParam;
    private int mDeviceOrientation;
    private final EffectCallback mEffectCallback;
    private FilterFrameworkEffects mFilterFramework = null;
    private boolean mFilterFrameworkActive;
    private int mFilterFrameworkOutputTextureName;
    private boolean mHaveInitializedRemoteTexture;
    private boolean mIsInitialRemoteFrame = false;
    private boolean mIsInitialSelfFrame = false;
    boolean mLastFrameFrozen = false;
    private final GlView mOwningView;
    private final BorderRenderer mRemoteBorderRenderer;
    private final RemoteRendererCallback mRemoteCallback;
    private final RemoteRenderer.RendererFrameOutputData mRemoteFrameData;
    private final RemoteRenderer mRemoteRenderer;
    private final TextureRenderer mRemoteScreenRenderer;
    private final BorderRenderer mSelfBorderRenderer;
    private final SelfRendererCallback mSelfCallback;
    private final SelfRenderer mSelfRenderer;
    private final TextureRenderer mSelfScreenRenderer;
    private Rect mViewRect;
    private final WindowManager mWindowManager;
    
    public GLRenderer(GlView paramGlView, CameraSpecification paramCameraSpecification)
    {
      TalkApp.LOGV("Talk:GlView", "GlView.GLRenderer constructor");
      mWindowManager = ((WindowManager)getContext().getSystemService("window"));
      mRemoteCallback = new RemoteRendererCallback();
      mSelfCallback = new SelfRendererCallback();
      mOwningView = paramGlView;
      mRemoteRenderer = mRenderer.createRemoteRenderer(mRemoteCallback);
      mRemoteScreenRenderer = new TextureRenderer("remote");
      mSelfScreenRenderer = new TextureRenderer("self");
      mSelfBorderRenderer = new BorderRenderer("self");
      mRemoteBorderRenderer = new BorderRenderer("remote");
      mRemoteFrameData = new RemoteRenderer.RendererFrameOutputData();
      mEffectCallback = new EffectCallback();
      mSelfRenderer = mRenderer.createSelfRenderer(mSelfCallback, paramCameraSpecification);
      mDeviceOrientation = -1;
    }
    
    private void drawRemote(Rect paramRect, float paramFloat)
    {
      if (mHaveInitializedRemoteTexture)
      {
        mRemoteStopWatch.start();
        mRemoteScreenRenderer.setSourceTextureClip(mVideoAnimator.getRemoteFrameXClip(), mVideoAnimator.getRemoteFrameYClip());
        mRemoteScreenRenderer.drawFrame(paramRect, paramFloat);
        mRemoteBorderRenderer.drawFrame(paramRect, false, paramFloat, 1.0F, 1, 0.0F, 0.0F, 3, 0.3F);
        mRemoteStopWatch.stop();
      }
    }
    
    private void drawSelf(Rect paramRect, float paramFloat)
    {
      mSelfStopWatch.start();
      mSelfScreenRenderer.setSourceTextureClip(mVideoAnimator.getSelfFrameXClip() + mSelfBaseXClip, mVideoAnimator.getSelfFrameYClip() + mSelfBaseYClip);
      mSelfScreenRenderer.drawFrame(paramRect, paramFloat);
      mSelfBorderRenderer.drawFrame(paramRect, false, paramFloat, 1.0F, 1, 0.0F, 0.0F, 3, 0.3F);
      mSelfStopWatch.stop();
    }
    
    private void initializeFilterFramework(int paramInt, Object paramObject)
    {
      TalkApp.LOGV("Talk:GlView", "initializeFilterFramework");
      Object localObject = new int[1];
      GLES20.glGenTextures(1, (int[])localObject, 0);
      mFilterFrameworkOutputTextureName = localObject[0];
      localObject = new FilterSetupInputParameters();
      inputTextureName = mCameraTextureName;
      outputTextureName = mFilterFrameworkOutputTextureName;
      Size localSize = mSelfRenderer.getCameraBufferSize();
      inputTextureWidth = width;
      inputTextureHeight = height;
      effectId = paramInt;
      effectParam = paramObject;
      effectCallback = mEffectCallback;
      if (mFilterFramework == null) {
        mFilterFramework = new FilterFrameworkEffects(getContext(), (FilterSetupInputParameters)localObject);
      }
      for (;;)
      {
        TalkApp.LOGV("Talk:GlView", "initializeFilterFramework exit");
        return;
        mFilterFrameworkOutputTextureName = mFilterFramework.switchEffect((FilterSetupInputParameters)localObject);
      }
    }
    
    private void stopFilterEffect()
    {
      if (mFilterFramework != null)
      {
        mFilterFramework.releaseEffect();
        mFilterFramework = null;
      }
    }
    
    public void destroyRenderer()
    {
      mRemoteRenderer.release();
      mSelfRenderer.release();
    }
    
    public int getActiveEffect()
    {
      return mCurrentEffectId;
    }
    
    public Object getActiveEffectParam()
    {
      return mCurrentEffectParam;
    }
    
    public RemoteRenderer getRemoteRenderer()
    {
      return mRemoteRenderer;
    }
    
    public SelfRenderer getSelfRenderer()
    {
      return mSelfRenderer;
    }
    
    void onCameraOpened(boolean paramBoolean)
    {
      mCameraIsOpened = true;
      mSelfScreenRenderer.setFlipSourceTexture(paramBoolean);
      setActiveEffect(mCurrentEffectId, mCurrentEffectParam);
    }
    
    public void onDrawFrame(GL10 paramGL10)
    {
      if (mIsInitialSelfFrame)
      {
        GlView.this.onInitialSelfFrame();
        mIsInitialSelfFrame = false;
      }
      if (mIsInitialRemoteFrame)
      {
        GlView.this.onInitialRemoteFrame();
        mIsInitialRemoteFrame = false;
      }
      int i = GlView.surfaceRotationEnumToDegress(mWindowManager.getDefaultDisplay().getRotation());
      if (i != mDeviceOrientation)
      {
        mDeviceOrientation = i;
        mSelfRenderer.setDeviceOrientation(mDeviceOrientation);
      }
      GLES20.glDisable(3042);
      mRemoteRenderer.drawTexture(null, mRemoteFrameData);
      if (mRemoteFrameData.updatedTexture) {
        mHaveInitializedRemoteTexture = true;
      }
      if (mRemoteFrameData.frameSizeChanged) {
        mVideoAnimator.setRemoteFrameAspectRatio(mRemoteFrameData.frameWidth / mRemoteFrameData.frameHeight);
      }
      if ((!mVideoAnimator.getFreezeFrame()) && (mSelfRenderer.renderSelfFrame()))
      {
        if (mFilterFrameworkActive)
        {
          long l = mSelfRenderer.getMostRecentCameraFrameTime();
          mFilterFramework.setTimestamp(l);
          mFilterFramework.renderFrame();
        }
        mSelfRenderer.encodeFrame();
      }
      paramGL10 = mVideoAnimator.getRemoteFrameRect();
      float f1 = mVideoAnimator.getRemoteFrameAlpha();
      Rect localRect = mVideoAnimator.getSelfFrameRect();
      float f2 = mVideoAnimator.getSelfFrameAlpha();
      if (mVideoAnimator.getFreezeFrame())
      {
        if (!mLastFrameFrozen) {
          mCount = 0;
        }
        mCount += 1;
      }
      for (mLastFrameFrozen = true;; mLastFrameFrozen = false)
      {
        if ((!mHaveInitializedRemoteTexture) || (f1 != 1.0D) || (!paramGL10.equals(mViewRect))) {
          GlView.this.drawBgColor(mVideoAnimator.getBackgroundColor());
        }
        if (mVideoAnimator.getFlipZOrder()) {
          break;
        }
        drawRemote(paramGL10, f1);
        drawSelf(localRect, f2);
        return;
        if (mLastFrameFrozen) {
          Log.i("Talk:GlView", mCount + " frames were drawn during the last animation.");
        }
      }
      drawSelf(localRect, f2);
      drawRemote(paramGL10, f1);
    }
    
    public void onSurfaceChanged(GL10 paramGL10, int paramInt1, int paramInt2)
    {
      if (TalkApp.verboseLoggable()) {
        TalkApp.LOGV("Talk:GlView", "GlView.GLRenderer.onSurfaceChanged " + paramInt1 + "x" + paramInt2);
      }
      mViewRect = new Rect(0, 0, paramInt1, paramInt2);
      mRemoteScreenRenderer.setViewSize(paramInt1, paramInt2);
      mSelfScreenRenderer.setViewSize(paramInt1, paramInt2);
      mSelfBorderRenderer.setViewSize(paramInt1, paramInt2);
      mRemoteBorderRenderer.setViewSize(paramInt1, paramInt2);
      mVideoAnimator.setViewportSize(paramInt1, paramInt2);
    }
    
    public void onSurfaceCreated(GL10 paramGL10, EGLConfig paramEGLConfig)
    {
      TalkApp.LOGV("Talk:GlView", "GlView.GLRenderer.onSurfaceCreated");
      mCameraIsOpened = false;
      mRemoteRenderer.initializeGLContext();
      mRemoteScreenRenderer.initGLContext();
      mRemoteScreenRenderer.setInputTextureName(mRemoteRenderer.getOutputTextureName());
      mSelfRenderer.initializeGLContext();
      mSelfScreenRenderer.initGLContext();
      mSelfBorderRenderer.initGLContext();
      mRemoteBorderRenderer.initGLContext();
      mCameraTextureName = mSelfRenderer.getOutputTextureName();
      mSelfScreenRenderer.setInputTextureName(mCameraTextureName);
      mFilterFrameworkActive = false;
      if (mFilterFramework != null)
      {
        mFilterFramework.release();
        mFilterFramework = null;
      }
      if (mCallback != null) {
        mCallback.complete();
      }
      mHaveInitializedRemoteTexture = false;
    }
    
    void setActiveEffect(int paramInt, Object paramObject)
    {
      if (TalkApp.verboseLoggable()) {
        TalkApp.LOGV("Talk:GlView", "setActiveEffect " + paramInt + " " + paramObject + " cameraOpened " + mCameraIsOpened);
      }
      mCurrentEffectId = paramInt;
      mCurrentEffectParam = paramObject;
      if (!mCameraIsOpened) {
        return;
      }
      mSelfRenderer.setUseMaxSizeForCameraBuffer(EffectsController.effectCanClip(paramInt));
      TalkApp.LOGV("Talk:GlView", "Unlocking AE/AWB");
      mGLRenderer.getSelfRenderer().getCamera().setPreview3ALocks(false);
      if (paramInt == 1)
      {
        mSelfRenderer.setMaxEncodeVideoSpec(VideoSpecification.getOutgoingVideoWithEffectsSpec());
        mSelfScreenRenderer.setInputTextureName(mCameraTextureName);
        mSelfRenderer.setImageStabilizationLevel(((Integer)paramObject).intValue());
        mSelfRenderer.resetEncodeTexture();
        stopFilterEffect();
        mFilterFrameworkActive = false;
        return;
      }
      if (paramInt != 0)
      {
        mSelfRenderer.setMaxEncodeVideoSpec(VideoSpecification.getOutgoingVideoWithEffectsSpec());
        initializeFilterFramework(paramInt, paramObject);
        mSelfRenderer.setImageStabilizationLevel(0);
        mSelfScreenRenderer.setInputTextureName(mFilterFrameworkOutputTextureName);
        mSelfRenderer.overrideEncodeTexture(mFilterFrameworkOutputTextureName);
        mFilterFrameworkActive = true;
        return;
      }
      mSelfRenderer.setMaxEncodeVideoSpec(VideoSpecification.getOutgoingVideoNoEffectsSpec());
      mSelfRenderer.setImageStabilizationLevel(0);
      mSelfScreenRenderer.setInputTextureName(mCameraTextureName);
      mSelfRenderer.resetEncodeTexture();
      stopFilterEffect();
      mFilterFrameworkActive = false;
    }
    
    class EffectCallback
      implements EffectUpdateListener
    {
      EffectCallback() {}
      
      public void onEffectUpdated(Effect paramEffect, Object paramObject)
      {
        if (mCurrentEffectId != 3) {
          LogUtil.Logwtf("Talk:GlView", "Effect callback fired when not using background replacement!");
        }
        do
        {
          return;
          LogUtil.LOGI("Talk:GlView", "Background learning complete, locking AE/AWB");
          mGLRenderer.getSelfRenderer().getCamera().setPreview3ALocks(true);
        } while (mEffectsStateCallback == null);
        mEffectsStateCallback.onBackgroundReplacementTraningSuccess();
      }
    }
    
    class RemoteRendererCallback
      implements Renderer.RendererThreadCallback
    {
      RemoteRendererCallback() {}
      
      public void onFrameGeometryChanged(float paramFloat1, float paramFloat2, float paramFloat3) {}
      
      public void onInitialFrame()
      {
        GlView.GLRenderer.access$1402(GlView.GLRenderer.this, true);
      }
      
      public void onOutputTextureNameChanged(int paramInt) {}
      
      public void queueEvent(Runnable paramRunnable)
      {
        GlView.this.queueEvent(paramRunnable);
      }
    }
    
    class SelfRendererCallback
      implements Renderer.SelfRendererThreadCallback
    {
      SelfRendererCallback() {}
      
      public Size getIdealCaptureSize()
      {
        if (EffectsController.anyAvailableEffectsCanClip()) {
          return new Size(640, 400);
        }
        return new Size(320, 200);
      }
      
      public void onCameraOpened(boolean paramBoolean)
      {
        mGLRenderer.onCameraOpened(paramBoolean);
      }
      
      public void onFrameGeometryChanged(float paramFloat1, float paramFloat2, float paramFloat3)
      {
        if (TalkApp.verboseLoggable()) {
          TalkApp.LOGV("Talk:GlView", "onFrameGeometryChanged AR " + paramFloat1 + " clip " + paramFloat2 + " - " + paramFloat3);
        }
        GlView.access$802(GlView.this, paramFloat2);
        GlView.access$902(GlView.this, paramFloat3);
        mVideoAnimator.setSelfFrameAspectRatio(paramFloat1);
      }
      
      public void onInitialFrame()
      {
        GlView.GLRenderer.access$1502(GlView.GLRenderer.this, true);
      }
      
      public void onOutputTextureNameChanged(int paramInt)
      {
        GlView.GLRenderer.access$1602(GlView.GLRenderer.this, paramInt);
        mSelfScreenRenderer.setInputTextureName(mCameraTextureName);
        if ((mFilterFramework != null) && (mFilterFrameworkActive))
        {
          mFilterFramework.setInputTextureName(mCameraTextureName);
          mSelfScreenRenderer.setInputTextureName(mFilterFrameworkOutputTextureName);
          mSelfRenderer.overrideEncodeTexture(mFilterFrameworkOutputTextureName);
        }
      }
      
      public void queueEvent(Runnable paramRunnable)
      {
        GlView.this.queueEvent(paramRunnable);
      }
    }
  }
  
  public static abstract interface GlViewInitializedCallback
  {
    public abstract void complete();
  }
  
  public static abstract interface InitialCameraFrameCallback
  {
    public abstract void onInitialFrame();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.GlView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */