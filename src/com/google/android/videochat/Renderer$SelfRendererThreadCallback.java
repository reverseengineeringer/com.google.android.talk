package com.google.android.videochat;

public abstract interface Renderer$SelfRendererThreadCallback
  extends Renderer.RendererThreadCallback
{
  public abstract Size getIdealCaptureSize();
  
  public abstract void onCameraOpened(boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.google.android.videochat.Renderer.SelfRendererThreadCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */