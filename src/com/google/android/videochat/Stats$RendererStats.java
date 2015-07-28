package com.google.android.videochat;

public class Stats$RendererStats
  extends Stats
{
  public float incomingVideoDroppedFramerate;
  public float incomingVideoFramerate;
  public float incomingVideoRenderedFramerate;
  public float rendererFramerate;
  
  public Stats$RendererStats(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    super(0);
    rendererFramerate = paramFloat1;
    incomingVideoFramerate = paramFloat2;
    incomingVideoRenderedFramerate = paramFloat3;
    incomingVideoDroppedFramerate = paramFloat4;
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.Stats.RendererStats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */