package com.google.android.videochat;

import android.os.Handler;
import android.os.Message;

class VideoChatService$StopServiceHandler
  extends Handler
{
  private VideoChatService$StopServiceHandler(VideoChatService paramVideoChatService) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 1) {
      VideoChatService.access$600(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.VideoChatService.StopServiceHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */