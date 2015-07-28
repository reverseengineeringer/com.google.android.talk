package com.google.android.talk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gtalkservice.IGTalkService.Stub;
import java.util.concurrent.atomic.AtomicBoolean;

class TalkApp$2
  implements ServiceConnection
{
  TalkApp$2(TalkApp paramTalkApp) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    TalkApp.access$000("service connected: mService=" + TalkApp.access$100(this$0));
    TalkApp.access$100(this$0).setService(IGTalkService.Stub.asInterface(paramIBinder));
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    TalkApp.access$200(this$0).set(false);
    TalkApp.access$000("service disconnected...");
    TalkApp.access$100(this$0).clearService();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkApp.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */