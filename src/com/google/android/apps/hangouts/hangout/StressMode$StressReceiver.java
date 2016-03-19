package com.google.android.apps.hangouts.hangout;

import aal;
import android.app.AlarmManager;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import cfc;
import hbs;
import java.util.Random;

public class StressMode$StressReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("start_next_hangout".equals(paramIntent.getAction())) {
      if (StressMode.a == null) {
        paramIntent.getParcelableExtra("hangout_intent");
      }
    }
    while (!"stop_stress".equals(paramIntent.getAction()))
    {
      return;
      paramContext = StressMode.a;
      hbs.b("Expected non-null", StressMode.a);
      switch (e)
      {
      default: 
        return;
      case 0: 
        paramContext.b();
        return;
      case 1: 
        if (d.nextFloat() < 0.3D)
        {
          paramIntent = new Intent("android.intent.action.MAIN");
          paramIntent.addCategory("android.intent.category.HOME");
          paramIntent.setFlags(268435456);
          c.startActivity(paramIntent);
          e = 2;
          paramContext.a();
          return;
        }
        if (b.r() == null)
        {
          paramContext.a();
          return;
        }
        paramContext.c();
        return;
      }
      if (d.nextFloat() < 0.5D)
      {
        paramContext.b();
        return;
      }
      paramContext.c();
      return;
    }
    if (StressMode.a != null) {
      StressMode.a.c();
    }
    StressMode.a = null;
    paramContext = aal.oJ;
    ((AlarmManager)paramContext.getSystemService("alarm")).cancel(StressMode.a(null));
    ((NotificationManager)paramContext.getSystemService("notification")).cancel(14);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.StressMode.StressReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */