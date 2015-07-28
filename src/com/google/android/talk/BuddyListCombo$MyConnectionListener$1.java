package com.google.android.talk;

import android.content.Intent;
import com.google.android.gtalkservice.ConnectionError;
import com.google.android.gtalkservice.ConnectionState;

class BuddyListCombo$MyConnectionListener$1
  implements Runnable
{
  BuddyListCombo$MyConnectionListener$1(BuddyListCombo.MyConnectionListener paramMyConnectionListener, ConnectionState paramConnectionState, ConnectionError paramConnectionError, long paramLong, String paramString) {}
  
  public void run()
  {
    boolean bool = BuddyListCombo.access$500(this$1.this$0).connectionStateChanged(val$state, val$error, val$accountId, val$username);
    if (this$1.this$0.isFinishing()) {}
    do
    {
      do
      {
        do
        {
          return;
          if (!bool) {
            break;
          }
          this$1.this$0.refreshAccountInfo();
        } while (BuddyListCombo.access$600(this$1.this$0) == null);
        this$1.this$0.getIntent().putExtra("accountId", access$600this$1.this$0).accountId);
      } while (access$600this$1.this$0).accountId != val$accountId);
      if (!val$state.isDisconnected())
      {
        AccountLoginUtils.setActiveAccount(BuddyListCombo.access$600(this$1.this$0), this$1.this$0);
        this$1.this$0.switchAccounts();
        return;
      }
    } while (val$error.getError() == 0);
    if (TalkApp.debugLoggable()) {
      BuddyListCombo.log("BuddyListCombo switching to AccountSelectionActivity handleConnectionEvent error: " + val$error);
    }
    AccountSelectionActivity.startAccountSelectionActivity(this$1.this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyListCombo.MyConnectionListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */