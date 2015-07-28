package com.google.android.talk.fragments;

import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import com.google.android.talk.SessionAvailableRunnable;
import com.google.android.talk.TalkApp;
import com.google.android.talk.TalkApp.AccountInfo;

class SetStatusFragment$1
  implements SessionAvailableRunnable
{
  SetStatusFragment$1(SetStatusFragment paramSetStatusFragment) {}
  
  public void run(IGTalkService paramIGTalkService, IImSession paramIImSession)
  {
    if ((paramIGTalkService == null) || (SetStatusFragment.access$300(this$0) == null) || (access$300this$0).accountId == 0L) || (this$0.getActivity() == null)) {
      return;
    }
    SetStatusFragment.access$402(this$0, paramIImSession);
    SetStatusFragment.access$500(this$0);
    SetStatusFragment.access$600(this$0);
    if (TalkApp.debugLoggable()) {
      SetStatusFragment.access$700(this$0, "initialize: update views");
    }
    SetStatusFragment.access$800(this$0);
    SetStatusFragment.access$900(this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */