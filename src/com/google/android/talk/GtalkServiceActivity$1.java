package com.google.android.talk;

import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gtalkservice.IGTalkService;

class GtalkServiceActivity$1
  implements Runnable
{
  GtalkServiceActivity$1(GtalkServiceActivity paramGtalkServiceActivity) {}
  
  public void run()
  {
    IGTalkService localIGTalkService = GtalkServiceActivity.access$000(this$0);
    if ((localIGTalkService != null) && (GtalkServiceActivity.access$100(this$0))) {}
    try
    {
      localIGTalkService.setTalkForegroundState();
      this$0.mHandler.postDelayed(GtalkServiceActivity.access$200(this$0), 20000L);
      return;
    }
    catch (RemoteException localRemoteException) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.GtalkServiceActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */