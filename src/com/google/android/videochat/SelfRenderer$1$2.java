package com.google.android.videochat;

class SelfRenderer$1$2
  implements Runnable
{
  SelfRenderer$1$2(SelfRenderer.1 param1, Size paramSize, boolean paramBoolean, int paramInt) {}
  
  public void run()
  {
    SelfRenderer.access$702(this$1.this$0, new Size(val$size));
    SelfRenderer.access$802(this$1.this$0, val$shouldFlip);
    SelfRenderer.access$902(this$1.this$0, val$cameraOrientation);
    SelfRenderer.access$1000(this$1.this$0);
    SelfRenderer.access$400(this$1.this$0).onCameraOpened(val$shouldFlip);
    SelfRenderer.access$300(this$1.this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.SelfRenderer.1.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */