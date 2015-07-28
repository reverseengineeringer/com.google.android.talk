package com.google.android.videochat;

public class VideoViewRequest
{
  public final int frameRate;
  public final int height;
  public final Renderer renderer;
  public final int ssrc;
  public final int width;
  
  public VideoViewRequest(int paramInt1, Renderer paramRenderer, int paramInt2, int paramInt3, int paramInt4)
  {
    ssrc = paramInt1;
    renderer = paramRenderer;
    width = paramInt2;
    height = paramInt3;
    frameRate = paramInt4;
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.VideoViewRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */