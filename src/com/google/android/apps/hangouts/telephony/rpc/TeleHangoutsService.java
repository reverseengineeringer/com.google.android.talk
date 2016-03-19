package com.google.android.apps.hangouts.telephony.rpc;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import eqo;
import eut;
import ezi;

public class TeleHangoutsService
  extends Service
{
  public IBinder onBind(Intent paramIntent)
  {
    if (!"com.google.android.apps.hangouts.telephony.ITeleHangoutsService".equals(paramIntent.getAction()))
    {
      ezi.e("Babel_telephony", "TeleHangoutService.onBind, unknown action; not binding", new Object[0]);
      return null;
    }
    int i = eut.a(this).b();
    if (i == -1)
    {
      ezi.c("Babel_telephony", "No account; not establishing binding.", new Object[0]);
      return null;
    }
    return new eqo(this, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.telephony.rpc.TeleHangoutsService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */