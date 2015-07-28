package com.google.android.videochat;

public class Stats$VideoMediaEngineStats
  extends Stats
{
  public int receivedFrameHeight;
  public int receivedFrameWidth;
  public float receivedFramerate;
  public int sentFrameHeight;
  public int sentFrameWidth;
  public float sentFramerate;
  
  public Stats$VideoMediaEngineStats(float paramFloat1, int paramInt1, int paramInt2, float paramFloat2, int paramInt3, int paramInt4)
  {
    super(1);
    receivedFramerate = paramFloat1;
    receivedFrameWidth = paramInt1;
    receivedFrameHeight = paramInt2;
    sentFramerate = paramFloat2;
    sentFrameWidth = paramInt3;
    sentFrameHeight = paramInt4;
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.Stats.VideoMediaEngineStats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */