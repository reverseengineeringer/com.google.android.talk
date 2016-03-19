package com.google.android.apps.hangouts.callmemaybe;

import android.app.IntentService;
import android.content.Intent;
import bbu;
import ilh;

public class NewPlusAccountService
  extends IntentService
{
  public NewPlusAccountService()
  {
    super("NewPlusAccountService");
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("account_id", -1);
    ((bbu)ilh.a(getApplicationContext(), bbu.class)).a(i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.callmemaybe.NewPlusAccountService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */