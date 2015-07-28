package com.google.android.videochat;

public abstract interface Renderer$RendererThreadCallback
{
  public abstract void onFrameGeometryChanged(float paramFloat1, float paramFloat2, float paramFloat3);
  
  public abstract void onInitialFrame();
  
  public abstract void onOutputTextureNameChanged(int paramInt);
  
  public abstract void queueEvent(Runnable paramRunnable);
}

/* Location:
 * Qualified Name:     com.google.android.videochat.Renderer.RendererThreadCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */