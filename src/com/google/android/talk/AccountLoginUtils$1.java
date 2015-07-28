package com.google.android.talk;

import com.google.android.gtalkservice.IGTalkConnection;
import com.google.android.gtalkservice.IGTalkConnectionListener.Stub;

final class AccountLoginUtils$1
  extends IGTalkConnectionListener.Stub
{
  AccountLoginUtils$1(String paramString, AccountLoginUtils.ConnectionCreatedListener paramConnectionCreatedListener) {}
  
  public void onConnectionCreated(IGTalkConnection paramIGTalkConnection)
  {
    AccountLoginUtils.access$000(paramIGTalkConnection, val$username, val$connectionCreatedListener);
  }
  
  public void onConnectionCreationFailed(String paramString)
  {
    AccountLoginUtils.access$100("asyncCreateConnectionForAccount: creating connection failed");
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountLoginUtils.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */