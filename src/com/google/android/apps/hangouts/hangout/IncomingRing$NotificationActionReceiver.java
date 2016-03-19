package com.google.android.apps.hangouts.hangout;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

public class IncomingRing$NotificationActionReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if (IncomingRing.b == null)
    {
      paramContext = paramIntent.getStringExtra("hangout_incoming_notification_tag");
      if (!TextUtils.isEmpty(paramContext))
      {
        IncomingRing.a(paramContext);
        IncomingRing.o();
      }
    }
    while (!"com.google.android.apps.hangouts.hangout.ignore".equals(paramContext)) {
      return;
    }
    IncomingRing.b.l();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.IncomingRing.NotificationActionReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */