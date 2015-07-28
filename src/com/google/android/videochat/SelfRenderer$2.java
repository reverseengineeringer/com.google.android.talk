package com.google.android.videochat;

import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;

class SelfRenderer$2
  implements SurfaceTexture.OnFrameAvailableListener
{
  SelfRenderer$2(SelfRenderer paramSelfRenderer) {}
  
  public void onFrameAvailable(SurfaceTexture arg1)
  {
    synchronized (SelfRenderer.access$1200(this$0))
    {
      SelfRenderer.access$1302(this$0, true);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.SelfRenderer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */