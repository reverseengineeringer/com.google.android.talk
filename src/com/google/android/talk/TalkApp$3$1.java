package com.google.android.talk;

import android.util.Log;

class TalkApp$3$1
  implements TalkApp.AccountListChangeListener
{
  TalkApp$3$1(TalkApp.3 param3) {}
  
  public void onAccountListChanged()
  {
    TalkApp.AccountInfo localAccountInfo = this$1.this$0.getAccountInfo(this$1.val$username);
    if (localAccountInfo == null) {
      if (TalkApp.debugLoggable()) {
        Log.e("talk", "setImSessionAvailable couldn't find account info for username " + this$1.val$username);
      }
    }
    for (;;)
    {
      this$1.this$0.removeAccountListChangedListener(this);
      return;
      Log.e("talk", "setImSessionAvailable couldn't find account info for username.");
      continue;
      long l = accountId;
      TalkApp.access$100(this$1.this$0).setImSessionAvailable(l, this$1.val$session);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkApp.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */