package com.google.android.talk;

import com.google.android.gsf.TalkContract.AccountSettings.QueryMap;

class SelfStatusCursor$2
  implements Runnable
{
  SelfStatusCursor$2(SelfStatusCursor paramSelfStatusCursor, TalkApp.AccountInfo paramAccountInfo) {}
  
  public void run()
  {
    ??? = SettingsCache.getInstance().getSettingsMap(val$info.accountId);
    SelfStatusCursor.access$202(this$0, ((TalkContract.AccountSettings.QueryMap)???).getCapabilities());
    synchronized (SelfStatusCursor.access$300(this$0))
    {
      SelfStatusCursor.access$300(this$0).notifyAll();
      SelfStatusCursor.access$402(this$0, true);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SelfStatusCursor.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */