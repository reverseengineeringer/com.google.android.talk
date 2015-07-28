package com.google.android.talk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class AccountChangedReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((!paramIntent.getAction().equals("android.accounts.LOGIN_ACCOUNTS_CHANGED")) || (TalkApp.isDisallowedUser(paramContext))) {
      return;
    }
    TalkApp.LOGD("talk", "AccountAddedReceiver LOGIN_ACCOUNTS_CHANGED_ACTION");
    paramContext.startService(new Intent(paramContext, AccountChangedService.class));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountChangedReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */