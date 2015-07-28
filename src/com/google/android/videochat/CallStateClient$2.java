package com.google.android.videochat;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

class CallStateClient$2
  implements ServiceConnection
{
  CallStateClient$2(CallStateClient paramCallStateClient) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    paramComponentName = (VideoChatService.SoftBinder)paramIBinder;
    CallStateClient.access$000(this$0, paramComponentName);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    this$0.onDisconnected();
    this$0.stopListening();
    CallStateClient.access$102(this$0, null);
    this$0.startListening();
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallStateClient.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */