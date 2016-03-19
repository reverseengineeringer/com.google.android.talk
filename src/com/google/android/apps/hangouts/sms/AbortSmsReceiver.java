package com.google.android.apps.hangouts.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import dvd;
import dvi;

public final class AbortSmsReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (Build.VERSION.SDK_INT < 19)
    {
      paramContext = dvd.d;
      if ((dvi.a()) && (!SmsReceiver.a(paramIntent))) {
        abortBroadcast();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.sms.AbortSmsReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */