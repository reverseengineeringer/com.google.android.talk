package com.google.android.talk;

import android.util.Log;
import com.google.android.gtalkservice.ConnectionError;
import com.google.android.gtalkservice.ConnectionState;
import com.google.android.gtalkservice.IConnectionStateListener.Stub;

final class AccountChangedService$TalkConnectionListener
  extends IConnectionStateListener.Stub
{
  private AccountChangedService$TalkConnectionListener(AccountChangedService paramAccountChangedService) {}
  
  public void connectionStateChanged(ConnectionState paramConnectionState, ConnectionError paramConnectionError, long paramLong, String paramString)
  {
    try
    {
      if (TalkApp.debugLoggable()) {
        AccountChangedService.access$100(this$0, "connectionStateChanged: state: " + paramConnectionState.toString() + " error: " + paramConnectionError + " accountId: " + paramLong + " username: " + paramString);
      }
      AccountChangedService.access$200(this$0).connectionStateChanged(paramConnectionState, paramConnectionError, paramLong, paramString);
      paramConnectionState = AccountChangedService.access$200(this$0).getAccountInfo(paramString);
      if (paramConnectionState != null)
      {
        autoLoggingIn = false;
        FeatureManager.setAvailableFeatures(this$0, paramLong, new Runnable()
        {
          public void run()
          {
            if (!AccountChangedService.access$300(this$0))
            {
              AccountChangedService.access$100(this$0, "stopping service");
              AccountChangedService.access$400(this$0);
              AccountChangedService.access$200(this$0).removeAccountListChangedListener(this$0);
              this$0.stopSelf();
            }
          }
        });
      }
      return;
    }
    catch (RuntimeException paramConnectionState)
    {
      Log.e("talk", "AccountChangedService.connectionStateChanged error", paramConnectionState);
      throw paramConnectionState;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountChangedService.TalkConnectionListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */