package com.google.android.apps.hangouts.telephony;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import est;
import eut;
import euv;
import ezi;

public class TelePhoneStateReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((Build.VERSION.SDK_INT >= 22) && (!TextUtils.isEmpty(eut.a(paramContext).i()))) {}
    for (int i = 1;; i = 0)
    {
      if ((i != 0) && ("android.intent.action.PHONE_STATE".equals(paramIntent.getAction())))
      {
        Object localObject = paramIntent.getStringExtra("state");
        if (TelephonyManager.EXTRA_STATE_OFFHOOK.equals(localObject))
        {
          boolean bool = PhoneNumberUtils.isLocalEmergencyNumber(paramContext, paramIntent.getStringExtra("incoming_number"));
          ezi.c("Babel_telephony", 57 + "TelePhoneStateReceiver.processNewCall, isEmergency: " + bool, new Object[0]);
          if (bool)
          {
            paramIntent = (TelephonyManager)paramContext.getSystemService("phone");
            localObject = new est(paramContext, 3);
            paramIntent = new euv(paramIntent.getNetworkType(), ((est)localObject).c(), System.currentTimeMillis());
            localObject = String.valueOf(paramIntent);
            ezi.c("Babel_telephony", String.valueOf(localObject).length() + 45 + "TelePhoneStateReceiver.processNewCall, info: " + (String)localObject, new Object[0]);
            eut.a(paramContext).a(paramIntent);
          }
        }
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.telephony.TelePhoneStateReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */