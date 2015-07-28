package com.google.android.videochat;

import android.os.Binder;

public class VideoChatService$SoftBinder
  extends Binder
{
  public VideoChatService$SoftBinder(VideoChatService paramVideoChatService) {}
  
  public void addRemoteCallStateListener(CallStateListener paramCallStateListener)
  {
    if (VideoChatService.access$300(this$0)) {
      return;
    }
    VideoChatService.access$000(this$0).addCallStateListener(paramCallStateListener);
  }
  
  public void removeRemoteCallStateListener(CallStateListener paramCallStateListener)
  {
    if (VideoChatService.access$300(this$0)) {
      return;
    }
    VideoChatService.access$000(this$0).removeCallStateListener(paramCallStateListener);
  }
  
  public void requestCallStateUpdate(Object paramObject)
  {
    if (VideoChatService.access$300(this$0)) {
      return;
    }
    VideoChatService.access$000(this$0).requestCallStateUpdate(paramObject);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.VideoChatService.SoftBinder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */