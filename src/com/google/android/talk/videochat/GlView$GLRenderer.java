package com.google.android.talk.videochat;

import android.content.Context;
import android.graphics.Rect;
import android.media.effect.Effect;
import android.media.effect.EffectUpdateListener;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView.Renderer;
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

class GlView$GLRenderer
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
  
  public GlView$GLRenderer(GlView paramGlView1, GlView paramGlView2, CameraSpecification paramCameraSpecification)
  {
    TalkApp.LOGV("Talk:GlView", "GlView.GLRenderer constructor");
    mWindowManager = ((WindowManager)paramGlView1.getContext().getSystemService("window"));
    mRemoteCallback = new RemoteRendererCallback();
    mSelfCallback = new SelfRendererCallback();
    mOwningView = paramGlView2;
    mRemoteRenderer = GlView.access$200(paramGlView1).createRemoteRenderer(mRemoteCallback);
    mRemoteScreenRenderer = new TextureRenderer("remote");
    mSelfScreenRenderer = new TextureRenderer("self");
    mSelfBorderRenderer = new BorderRenderer("self");
    mRemoteBorderRenderer = new BorderRenderer("remote");
    mRemoteFrameData = new RemoteRenderer.RendererFrameOutputData();
    mEffectCallback = new EffectCallback();
    mSelfRenderer = GlView.access$200(paramGlView1).createSelfRenderer(mSelfCallback, paramCameraSpecification);
    mDeviceOrientation = -1;
  }
  
  private void drawRemote(Rect paramRect, float paramFloat)
  {
    if (mHaveInitializedRemoteTexture)
    {
      GlView.access$1000(this$0).start();
      mRemoteScreenRenderer.setSourceTextureClip(GlView.access$100(this$0).getRemoteFrameXClip(), GlView.access$100(this$0).getRemoteFrameYClip());
      mRemoteScreenRenderer.drawFrame(paramRect, paramFloat);
      mRemoteBorderRenderer.drawFrame(paramRect, false, paramFloat, 1.0F, 1, 0.0F, 0.0F, 3, 0.3F);
      GlView.access$1000(this$0).stop();
    }
  }
  
  private void drawSelf(Rect paramRect, float paramFloat)
  {
    GlView.access$700(this$0).start();
    mSelfScreenRenderer.setSourceTextureClip(GlView.access$100(this$0).getSelfFrameXClip() + GlView.access$800(this$0), GlView.access$100(this$0).getSelfFrameYClip() + GlView.access$900(this$0));
    mSelfScreenRenderer.drawFrame(paramRect, paramFloat);
    mSelfBorderRenderer.drawFrame(paramRect, false, paramFloat, 1.0F, 1, 0.0F, 0.0F, 3, 0.3F);
    GlView.access$700(this$0).stop();
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
      mFilterFramework = new FilterFrameworkEffects(this$0.getContext(), (FilterSetupInputParameters)localObject);
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
      GlView.access$300(this$0);
      mIsInitialSelfFrame = false;
    }
    if (mIsInitialRemoteFrame)
    {
      GlView.access$400(this$0);
      mIsInitialRemoteFrame = false;
    }
    int i = GlView.access$500(mWindowManager.getDefaultDisplay().getRotation());
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
      GlView.access$100(this$0).setRemoteFrameAspectRatio(mRemoteFrameData.frameWidth / mRemoteFrameData.frameHeight);
    }
    if ((!GlView.access$100(this$0).getFreezeFrame()) && (mSelfRenderer.renderSelfFrame()))
    {
      if (mFilterFrameworkActive)
      {
        long l = mSelfRenderer.getMostRecentCameraFrameTime();
        mFilterFramework.setTimestamp(l);
        mFilterFramework.renderFrame();
      }
      mSelfRenderer.encodeFrame();
    }
    paramGL10 = GlView.access$100(this$0).getRemoteFrameRect();
    float f1 = GlView.access$100(this$0).getRemoteFrameAlpha();
    Rect localRect = GlView.access$100(this$0).getSelfFrameRect();
    float f2 = GlView.access$100(this$0).getSelfFrameAlpha();
    if (GlView.access$100(this$0).getFreezeFrame())
    {
      if (!mLastFrameFrozen) {
        mCount = 0;
      }
      mCount += 1;
    }
    for (mLastFrameFrozen = true;; mLastFrameFrozen = false)
    {
      if ((!mHaveInitializedRemoteTexture) || (f1 != 1.0D) || (!paramGL10.equals(mViewRect))) {
        GlView.access$600(this$0, GlView.access$100(this$0).getBackgroundColor());
      }
      if (GlView.access$100(this$0).getFlipZOrder()) {
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
    GlView.access$100(this$0).setViewportSize(paramInt1, paramInt2);
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
    if (this$0.mCallback != null) {
      this$0.mCallback.complete();
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
    GlView.access$000(this$0).getSelfRenderer().getCamera().setPreview3ALocks(false);
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
        GlView.access$000(this$0).getSelfRenderer().getCamera().setPreview3ALocks(true);
      } while (GlView.access$1200(this$0) == null);
      GlView.access$1200(this$0).onBackgroundReplacementTraningSuccess();
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
      mOwningView.queueEvent(paramRunnable);
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
      GlView.access$000(this$0).onCameraOpened(paramBoolean);
    }
    
    public void onFrameGeometryChanged(float paramFloat1, float paramFloat2, float paramFloat3)
    {
      if (TalkApp.verboseLoggable()) {
        TalkApp.LOGV("Talk:GlView", "onFrameGeometryChanged AR " + paramFloat1 + " clip " + paramFloat2 + " - " + paramFloat3);
      }
      GlView.access$802(this$0, paramFloat2);
      GlView.access$902(this$0, paramFloat3);
      GlView.access$100(this$0).setSelfFrameAspectRatio(paramFloat1);
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
      mOwningView.queueEvent(paramRunnable);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.GlView.GLRenderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */