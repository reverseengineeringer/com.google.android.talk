package com.google.android.talk;

import android.os.Handler;
import android.util.Log;
import com.google.android.gtalkservice.ConnectionError;
import com.google.android.gtalkservice.ConnectionState;
import com.google.android.gtalkservice.IConnectionStateListener.Stub;

class AccountSelectionActivity$MyConnectionListener
  extends IConnectionStateListener.Stub
{
  volatile AccountSelectionActivity mActivity;
  
  public AccountSelectionActivity$MyConnectionListener(AccountSelectionActivity paramAccountSelectionActivity)
  {
    mActivity = paramAccountSelectionActivity;
  }
  
  public void clearRefs()
  {
    mActivity = null;
  }
  
  public void connectionStateChanged(final ConnectionState paramConnectionState, final ConnectionError paramConnectionError, final long paramLong, String paramString)
  {
    AccountSelectionActivity localAccountSelectionActivity = mActivity;
    if (localAccountSelectionActivity == null) {
      return;
    }
    StringBuilder localStringBuilder;
    if (TalkApp.debugLoggable())
    {
      localStringBuilder = new StringBuilder().append("connectionStateChanged: state: ").append(paramConnectionState.toString()).append(" error: ").append(paramConnectionError).append(" accountId: ").append(paramLong).append(" username: ").append(paramString).append(" mAccountInfo: ");
      if (AccountSelectionActivity.access$200(localAccountSelectionActivity) != null) {
        break label115;
      }
    }
    label115:
    for (String str = null;; str = AccountSelectionActivity.access$200(localAccountSelectionActivity).dump())
    {
      AccountSelectionActivity.log(str);
      localAccountSelectionActivity.runOnUiThread(new Runnable()
      {
        public void run()
        {
          AccountSelectionActivity localAccountSelectionActivity = mActivity;
          if (localAccountSelectionActivity == null) {}
          boolean bool;
          do
          {
            return;
            bool = AccountSelectionActivity.access$300(localAccountSelectionActivity).connectionStateChanged(paramConnectionState, paramConnectionError, paramLong, val$username);
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
          if (paramLong == access$200accountId)
          {
            if (paramConnectionError != null) {}
            for (int i = paramConnectionError.getError(); (paramConnectionState.isOnline()) || ((i != 5) && (i != 4)); i = 0)
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
            localHandler.post(new AccountSelectionActivity.ConnectionErrorCallback(localAccountSelectionActivity, paramConnectionError));
          }
          AccountSelectionActivity.access$600(localAccountSelectionActivity).notifyDataSetChanged();
        }
      });
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountSelectionActivity.MyConnectionListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */