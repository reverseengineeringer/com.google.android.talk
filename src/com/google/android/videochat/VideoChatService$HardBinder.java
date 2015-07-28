package com.google.android.videochat;

import android.content.ComponentName;
import android.os.Binder;

public class VideoChatService$HardBinder
  extends Binder
{
  public VideoChatService$HardBinder(VideoChatService paramVideoChatService) {}
  
  public CallSession getCallSession()
  {
    return VideoChatService.access$400(this$0);
  }
  
  void setOutputReceiverComponent(ComponentName paramComponentName)
  {
    this$0.setOutputReceiverComponent(paramComponentName);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.VideoChatService.HardBinder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */