package com.google.android.libraries.social.account.refresh.receiver;

import android.content.Context;
import android.content.Intent;
import fu;

public final class AccountsChangedReceiver
  extends fu
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    a(paramContext, new Intent(paramContext, AccountsChangedService.class));
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.account.refresh.receiver.AccountsChangedReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */