package com.google.android.talk.videochat;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import com.google.android.gtalkservice.IGTalkService.Stub;
import java.util.Queue;

class VideoChatOutputProcessingService$1
  implements ServiceConnection
{
  VideoChatOutputProcessingService$1(VideoChatOutputProcessingService paramVideoChatOutputProcessingService) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this$0.mGTalkService = IGTalkService.Stub.asInterface(paramIBinder);
    while (!VideoChatOutputProcessingService.access$300(this$0).isEmpty()) {
      VideoChatOutputProcessingService.access$400(this$0).sendMessage((Message)VideoChatOutputProcessingService.access$300(this$0).remove());
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    this$0.mGTalkService = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatOutputProcessingService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */