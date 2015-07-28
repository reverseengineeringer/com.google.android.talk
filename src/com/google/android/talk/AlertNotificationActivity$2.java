package com.google.android.talk;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class AlertNotificationActivity$2
  extends BroadcastReceiver
{
  AlertNotificationActivity$2(AlertNotificationActivity paramAlertNotificationActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (KeyguardManager)paramContext.getSystemService("keyguard");
    AlertNotificationActivity.access$000(this$0, paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AlertNotificationActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */