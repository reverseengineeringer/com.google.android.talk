package com.google.android.libraries.hangouts.video.internal;

import com.google.android.apps.common.proguard.UsedByNative;

@UsedByNative
public class VideoViewRequest
{
  @UsedByNative
  public final int frameRate;
  @UsedByNative
  public final int height;
  @UsedByNative
  public final int rendererId;
  @UsedByNative
  public final long rendererManagerNativeContext;
  @UsedByNative
  public final int ssrc;
  @UsedByNative
  public final int width;
  
  public VideoViewRequest(int paramInt1, Renderer paramRenderer, int paramInt2, int paramInt3, int paramInt4)
  {
    ssrc = paramInt1;
    width = paramInt2;
    height = paramInt3;
    frameRate = paramInt4;
    rendererManagerNativeContext = mRendererManager.b();
    rendererId = mRendererID;
  }
  
  public String toString()
  {
    return "VideoViewRequest: ssrc=" + ssrc + ",w=" + width + ",h=" + height + ",fps=" + frameRate + ")";
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.VideoViewRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */