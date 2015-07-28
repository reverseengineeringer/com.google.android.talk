package com.google.android.talk;

import android.util.Log;
import com.google.android.gtalkservice.IImSession;

class TalkApp$3
  implements Runnable
{
  TalkApp$3(TalkApp paramTalkApp, String paramString, IImSession paramIImSession) {}
  
  public void run()
  {
    TalkApp.AccountListChangeListener local1 = new TalkApp.AccountListChangeListener()
    {
      public void onAccountListChanged()
      {
        TalkApp.AccountInfo localAccountInfo = this$0.getAccountInfo(val$username);
        if (localAccountInfo == null) {
          if (TalkApp.debugLoggable()) {
            Log.e("talk", "setImSessionAvailable couldn't find account info for username " + val$username);
          }
        }
        for (;;)
        {
          this$0.removeAccountListChangedListener(this);
          return;
          Log.e("talk", "setImSessionAvailable couldn't find account info for username.");
          continue;
          long l = accountId;
          TalkApp.access$100(this$0).setImSessionAvailable(l, val$session);
        }
      }
    };
    this$0.addAccountListChangedListener(local1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkApp.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */