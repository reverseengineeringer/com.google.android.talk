package com.google.android.talk;

import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;

class GtalkServiceActivity$2
  implements SessionAvailableRunnable
{
  GtalkServiceActivity$2(GtalkServiceActivity paramGtalkServiceActivity) {}
  
  public void run(IGTalkService paramIGTalkService, IImSession paramIImSession)
  {
    this$0.sessionAvailable(paramIGTalkService, paramIImSession);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.GtalkServiceActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */