package com.google.android.apps.hangouts.hangout;

import aal;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import cfc;
import cgw;

public class HangoutUtils$JoinedHangoutReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("session");
    cgw localcgw = cfc.a().r();
    if ((localcgw == null) || (!localcgw.m().equals(str))) {}
    do
    {
      return;
      if ("com.google.android.apps.hangouts.hangout.joined".equals(paramIntent.getAction()))
      {
        paramIntent = aal.a(localcgw.e(), null, false, 51, localcgw.J(), SystemClock.elapsedRealtime());
        paramIntent.setFlags(872415232);
        paramContext.startActivity(paramIntent);
        return;
      }
    } while (!"com.google.android.apps.hangouts.hangout.exit".equals(paramIntent.getAction()));
    localcgw.b(1004);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.HangoutUtils.JoinedHangoutReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */