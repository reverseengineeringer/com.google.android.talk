package com.google.android.talk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class AlertNotificationFullScreenActivity$1
  extends BroadcastReceiver
{
  AlertNotificationFullScreenActivity$1(AlertNotificationFullScreenActivity paramAlertNotificationFullScreenActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if ((paramContext.equals("com.google.android.talk.CANCEL_NOTIFICATION")) || ((paramContext.equals("com.google.android.talk.CANCEL_POPUP_NOTIFICATION")) && (!this$0.mIsIncomingCall)))
    {
      TalkApp.LOGD("talk", "[AlertNotificationFullScreen] received " + paramContext + ", dismiss dialog");
      AlertNotificationFullScreenActivity.access$000(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AlertNotificationFullScreenActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */