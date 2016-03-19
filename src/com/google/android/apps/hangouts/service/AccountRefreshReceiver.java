package com.google.android.apps.hangouts.service;

import android.content.Context;
import android.content.Intent;
import dvd;
import fu;

public class AccountRefreshReceiver
  extends fu
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Intent localIntent = new Intent(paramContext, LoginManagerAccountRefreshService.class);
    if (paramIntent.getAction().equals("com.google.android.apps.enterprise.dmagent.AUTO_REGISTRATION_FINISHED")) {
      if (paramIntent.getStringExtra("dmagent_autoregister_error_code").equals("SUCCESS")) {
        dvd.t();
      }
    }
    for (;;)
    {
      a(paramContext, localIntent);
      return;
      if (paramIntent.getAction().equals("android.accounts.LOGIN_ACCOUNTS_CHANGED")) {
        localIntent.putExtra("new_accounts_only", true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.service.AccountRefreshReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */