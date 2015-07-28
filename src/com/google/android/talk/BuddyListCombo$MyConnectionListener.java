package com.google.android.talk;

import android.content.Intent;
import com.google.android.gtalkservice.ConnectionError;
import com.google.android.gtalkservice.ConnectionState;
import com.google.android.gtalkservice.IConnectionStateListener.Stub;

final class BuddyListCombo$MyConnectionListener
  extends IConnectionStateListener.Stub
{
  private BuddyListCombo$MyConnectionListener(BuddyListCombo paramBuddyListCombo) {}
  
  public void connectionStateChanged(final ConnectionState paramConnectionState, final ConnectionError paramConnectionError, final long paramLong, String paramString)
  {
    StringBuilder localStringBuilder;
    if (TalkApp.debugLoggable())
    {
      localStringBuilder = new StringBuilder().append("connectionStateChanged: state: ").append(paramConnectionState.toString()).append(" error: ").append(paramConnectionError).append(" accountId: ").append(paramLong).append(" username: ").append(paramString).append(" mAccountInfo: ");
      if (BuddyListCombo.access$600(this$0) != null) {
        break label107;
      }
    }
    label107:
    for (String str = null;; str = BuddyListCombo.access$600(this$0).dump())
    {
      BuddyListCombo.log(str);
      this$0.runOnUiThread(new Runnable()
      {
        public void run()
        {
          boolean bool = BuddyListCombo.access$500(this$0).connectionStateChanged(paramConnectionState, paramConnectionError, paramLong, val$username);
          if (this$0.isFinishing()) {}
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
                this$0.refreshAccountInfo();
              } while (BuddyListCombo.access$600(this$0) == null);
              this$0.getIntent().putExtra("accountId", access$600this$0).accountId);
            } while (access$600this$0).accountId != paramLong);
            if (!paramConnectionState.isDisconnected())
            {
              AccountLoginUtils.setActiveAccount(BuddyListCombo.access$600(this$0), this$0);
              this$0.switchAccounts();
              return;
            }
          } while (paramConnectionError.getError() == 0);
          if (TalkApp.debugLoggable()) {
            BuddyListCombo.log("BuddyListCombo switching to AccountSelectionActivity handleConnectionEvent error: " + paramConnectionError);
          }
          AccountSelectionActivity.startAccountSelectionActivity(this$0);
        }
      });
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyListCombo.MyConnectionListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */