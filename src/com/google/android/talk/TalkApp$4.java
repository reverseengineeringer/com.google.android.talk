package com.google.android.talk;

import com.google.android.gtalkservice.IImSession;

class TalkApp$4
  implements Runnable
{
  TalkApp$4(TalkApp paramTalkApp, IImSession paramIImSession) {}
  
  public void run()
  {
    DatabaseUtils.pruneOldMessageHistory(this$0.getContentResolver());
    TalkApp.access$300(this$0, val$imSession);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkApp.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */