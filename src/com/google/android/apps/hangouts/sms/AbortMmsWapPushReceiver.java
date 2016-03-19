package com.google.android.apps.hangouts.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import dvd;
import dvi;

public class AbortMmsWapPushReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (("android.provider.Telephony.WAP_PUSH_RECEIVED".equals(paramIntent.getAction())) && ("application/vnd.wap.mms-message".equals(paramIntent.getType())) && (Build.VERSION.SDK_INT < 19))
    {
      paramContext = dvd.d;
      if (dvi.a()) {
        abortBroadcast();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.sms.AbortMmsWapPushReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */