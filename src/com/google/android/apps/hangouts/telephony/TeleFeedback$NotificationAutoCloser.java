package com.google.android.apps.hangouts.telephony;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class TeleFeedback$NotificationAutoCloser
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ((NotificationManager)paramContext.getSystemService("notification")).cancel("telephony_call_feedback", paramIntent.getIntExtra("telephony_id", -1));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.telephony.TeleFeedback.NotificationAutoCloser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */