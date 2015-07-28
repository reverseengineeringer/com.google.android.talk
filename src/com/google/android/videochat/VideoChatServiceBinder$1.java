package com.google.android.videochat;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

class VideoChatServiceBinder$1
  implements ServiceConnection
{
  VideoChatServiceBinder$1(VideoChatServiceBinder paramVideoChatServiceBinder) {}
  
  public void onServiceConnected(ComponentName arg1, IBinder paramIBinder)
  {
    paramIBinder = (VideoChatService.HardBinder)paramIBinder;
    paramIBinder.setOutputReceiverComponent(VideoChatServiceBinder.access$000(this$0));
    synchronized (this$0)
    {
      if (VideoChatServiceBinder.access$100(this$0) != null)
      {
        VideoChatServiceBinder.access$100(this$0).onServiceBound(paramIBinder);
        VideoChatServiceBinder.access$102(this$0, null);
      }
      return;
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}

/* Location:
 * Qualified Name:     com.google.android.videochat.VideoChatServiceBinder.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */