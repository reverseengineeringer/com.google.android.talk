package com.google.android.videochat;

import java.io.PrintWriter;

public abstract class Renderer
{
  protected int mRendererID;
  protected RendererManager mRendererManager;
  
  public abstract void dump(PrintWriter paramPrintWriter);
  
  public static abstract class DrawInputParams {}
  
  public static abstract class DrawOutputParams {}
  
  public static abstract interface RendererThreadCallback
  {
    public abstract void onFrameGeometryChanged(float paramFloat1, float paramFloat2, float paramFloat3);
    
    public abstract void onInitialFrame();
    
    public abstract void onOutputTextureNameChanged(int paramInt);
    
    public abstract void queueEvent(Runnable paramRunnable);
  }
  
  public static abstract interface SelfRendererThreadCallback
    extends Renderer.RendererThreadCallback
  {
    public abstract Size getIdealCaptureSize();
    
    public abstract void onCameraOpened(boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.Renderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */