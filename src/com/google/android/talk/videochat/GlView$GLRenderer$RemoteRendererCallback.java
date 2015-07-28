package com.google.android.talk.videochat;

import com.google.android.videochat.Renderer.RendererThreadCallback;

class GlView$GLRenderer$RemoteRendererCallback
  implements Renderer.RendererThreadCallback
{
  GlView$GLRenderer$RemoteRendererCallback(GlView.GLRenderer paramGLRenderer) {}
  
  public void onFrameGeometryChanged(float paramFloat1, float paramFloat2, float paramFloat3) {}
  
  public void onInitialFrame()
  {
    GlView.GLRenderer.access$1402(this$1, true);
  }
  
  public void onOutputTextureNameChanged(int paramInt) {}
  
  public void queueEvent(Runnable paramRunnable)
  {
    GlView.GLRenderer.access$1300(this$1).queueEvent(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.GlView.GLRenderer.RemoteRendererCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */