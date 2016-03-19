package com.google.android.apps.hangouts.service;

import android.app.IntentService;
import android.content.Intent;
import ezi;
import fu;
import hqn;
import iaf;
import iai;
import ilh;

public class LoginManagerAccountRefreshService
  extends IntentService
{
  public LoginManagerAccountRefreshService()
  {
    super("LoginManagerAccountRefreshService");
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    try
    {
      ((iaf)ilh.a(this, iaf.class)).a(new iai().a(paramIntent.getBooleanExtra("new_accounts_only", false)).c());
      return;
    }
    catch (hqn localhqn)
    {
      for (;;)
      {
        ezi.c("Babel_AccountRefresh", "Loading device accounts failed", localhqn);
      }
    }
    finally
    {
      fu.a(paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.service.LoginManagerAccountRefreshService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */