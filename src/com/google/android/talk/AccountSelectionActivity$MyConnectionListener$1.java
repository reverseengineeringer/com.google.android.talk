package com.google.android.talk;

import android.os.Handler;
import android.util.Log;
import com.google.android.gtalkservice.ConnectionError;
import com.google.android.gtalkservice.ConnectionState;

class AccountSelectionActivity$MyConnectionListener$1
  implements Runnable
{
  AccountSelectionActivity$MyConnectionListener$1(AccountSelectionActivity.MyConnectionListener paramMyConnectionListener, ConnectionState paramConnectionState, ConnectionError paramConnectionError, long paramLong, String paramString) {}
  
  public void run()
  {
    AccountSelectionActivity localAccountSelectionActivity = this$0.mActivity;
    if (localAccountSelectionActivity == null) {}
    boolean bool;
    do
    {
      return;
      bool = AccountSelectionActivity.access$300(localAccountSelectionActivity).connectionStateChanged(val$state, val$error, val$accountId, val$username);
    } while ((AccountSelectionActivity.access$200(localAccountSelectionActivity) == null) || (AccountSelectionActivity.access$400(localAccountSelectionActivity)) || (localAccountSelectionActivity.isFinishing()));
    if (bool)
    {
      if (TalkApp.debugLoggable()) {
        AccountSelectionActivity.log("connectionStateChanged: changed is true, old mAccountInfo: " + AccountSelectionActivity.access$200(localAccountSelectionActivity));
      }
      AccountSelectionActivity.access$202(localAccountSelectionActivity, AccountSelectionActivity.access$300(localAccountSelectionActivity).getAccountInfo(access$200username));
      if (TalkApp.debugLoggable()) {
        AccountSelectionActivity.log("connectionStateChanged: changed is true, new mAccountInfo: " + AccountSelectionActivity.access$200(localAccountSelectionActivity));
      }
    }
    if (val$accountId == access$200accountId)
    {
      if (val$error != null) {}
      for (int i = val$error.getError(); (val$state.isOnline()) || ((i != 5) && (i != 4)); i = 0)
      {
        if (AccountSelectionActivity.access$300(localAccountSelectionActivity).setCurrentAccount(access$200username) == null) {
          Log.e("talk", "connectionStateChanged activeAccount for " + access$200username + " is null");
        }
        AccountSelectionActivity.access$402(localAccountSelectionActivity, true);
        AccountSelectionActivity.startBuddyListComboActivity(AccountSelectionActivity.access$200(localAccountSelectionActivity), localAccountSelectionActivity);
        return;
      }
      Handler localHandler = AccountSelectionActivity.access$500(localAccountSelectionActivity);
      localAccountSelectionActivity.getClass();
      localHandler.post(new AccountSelectionActivity.ConnectionErrorCallback(localAccountSelectionActivity, val$error));
    }
    AccountSelectionActivity.access$600(localAccountSelectionActivity).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountSelectionActivity.MyConnectionListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */