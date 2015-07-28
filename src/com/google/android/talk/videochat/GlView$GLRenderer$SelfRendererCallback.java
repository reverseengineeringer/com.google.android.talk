package com.google.android.talk.videochat;

import com.google.android.talk.TalkApp;
import com.google.android.videochat.Renderer.SelfRendererThreadCallback;
import com.google.android.videochat.SelfRenderer;
import com.google.android.videochat.Size;

class GlView$GLRenderer$SelfRendererCallback
  implements Renderer.SelfRendererThreadCallback
{
  GlView$GLRenderer$SelfRendererCallback(GlView.GLRenderer paramGLRenderer) {}
  
  public Size getIdealCaptureSize()
  {
    if (EffectsController.anyAvailableEffectsCanClip()) {
      return new Size(640, 400);
    }
    return new Size(320, 200);
  }
  
  public void onCameraOpened(boolean paramBoolean)
  {
    GlView.access$000(this$1.this$0).onCameraOpened(paramBoolean);
  }
  
  public void onFrameGeometryChanged(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (TalkApp.verboseLoggable()) {
      TalkApp.LOGV("Talk:GlView", "onFrameGeometryChanged AR " + paramFloat1 + " clip " + paramFloat2 + " - " + paramFloat3);
    }
    GlView.access$802(this$1.this$0, paramFloat2);
    GlView.access$902(this$1.this$0, paramFloat3);
    GlView.access$100(this$1.this$0).setSelfFrameAspectRatio(paramFloat1);
  }
  
  public void onInitialFrame()
  {
    GlView.GLRenderer.access$1502(this$1, true);
  }
  
  public void onOutputTextureNameChanged(int paramInt)
  {
    GlView.GLRenderer.access$1602(this$1, paramInt);
    GlView.GLRenderer.access$1700(this$1).setInputTextureName(GlView.GLRenderer.access$1600(this$1));
    if ((GlView.GLRenderer.access$1800(this$1) != null) && (GlView.GLRenderer.access$1900(this$1)))
    {
      GlView.GLRenderer.access$1800(this$1).setInputTextureName(GlView.GLRenderer.access$1600(this$1));
      GlView.GLRenderer.access$1700(this$1).setInputTextureName(GlView.GLRenderer.access$2000(this$1));
      GlView.GLRenderer.access$2100(this$1).overrideEncodeTexture(GlView.GLRenderer.access$2000(this$1));
    }
  }
  
  public void queueEvent(Runnable paramRunnable)
  {
    GlView.GLRenderer.access$1300(this$1).queueEvent(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.GlView.GLRenderer.SelfRendererCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */