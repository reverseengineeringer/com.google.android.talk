package com.google.android.apps.hangouts.telephony;

import aal;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telecom.TelecomManager;
import esd;
import esf;
import esg;
import ezi;
import hbs;

public class TeleIncomingWifiCallFallback$AlarmReceiver
  extends BroadcastReceiver
  implements esf
{
  private boolean a;
  
  public void a(esd paramesd)
  {
    ezi.c("Babel_telephony", "TeleIncomingWifiCallFallback.AlarmReceiver.onInviteCompleted", new Object[0]);
    a = true;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ezi.c("Babel_telephony", "TeleIncomingWifiCallFallback.AlarmReceiver.onReceive", new Object[0]);
    paramIntent = esg.a(paramIntent.getBundleExtra("invite_info"));
    if (!aal.a(paramContext, f, a))
    {
      ezi.c("Babel_telephony", "TeleIncomingWifiCallFallback.AlarmReceiver.onReceive, invite was cancelled", new Object[0]);
      aal.a(paramContext, f, b, 2337);
      return;
    }
    new esd(paramContext, this, (TelecomManager)paramContext.getSystemService("telecom"), paramIntent, true).a(null);
    hbs.a("Expected condition to be true", a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.telephony.TeleIncomingWifiCallFallback.AlarmReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */