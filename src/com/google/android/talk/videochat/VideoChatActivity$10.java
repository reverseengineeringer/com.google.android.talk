package com.google.android.talk.videochat;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gtalkservice.IChatSession;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IGTalkService.Stub;
import com.google.android.gtalkservice.IImSession;

class VideoChatActivity$10
  implements ServiceConnection
{
  VideoChatActivity$10(VideoChatActivity paramVideoChatActivity) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    paramComponentName = IGTalkService.Stub.asInterface(paramIBinder);
    try
    {
      paramComponentName = paramComponentName.getImSessionForAccountId(VideoChatActivity.access$5400(this$0));
      VideoChatActivity.access$5502(this$0, paramComponentName.getChatSession(VideoChatActivity.access$1100(this$0)));
      if (VideoChatActivity.access$5500(this$0) == null) {
        VideoChatActivity.access$5502(this$0, paramComponentName.createChatSession(VideoChatActivity.access$1100(this$0)));
      }
      VideoChatActivity.access$5500(this$0).addRemoteChatListener(VideoChatActivity.access$5600());
      return;
    }
    catch (RemoteException paramComponentName)
    {
      VideoChatActivity.access$2300(this$0, "Problem getting ChatSession " + paramComponentName);
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */