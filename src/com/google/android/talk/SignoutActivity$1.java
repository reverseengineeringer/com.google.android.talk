package com.google.android.talk;

import com.google.android.gtalkservice.IGTalkService;

class SignoutActivity$1
  implements ServiceAvailableRunnable
{
  SignoutActivity$1(SignoutActivity paramSignoutActivity) {}
  
  public void run(IGTalkService paramIGTalkService)
  {
    SignoutActivity.access$002(this$0, paramIGTalkService);
    if (SignoutActivity.access$000(this$0) != null)
    {
      SignoutActivity.access$100(this$0);
      return;
    }
    if (TalkApp.debugLoggable()) {
      SignoutActivity.log("service disconnected, finish");
    }
    this$0.finish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SignoutActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */