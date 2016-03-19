package com.google.android.apps.hangouts.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import bfd;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.sms.SmsReceiver;
import ctl;
import cyh;
import dvd;
import ehb;
import ezi;
import ilh;
import java.util.Iterator;
import java.util.List;

public class BootReceiver
  extends BroadcastReceiver
{
  public static boolean a(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("EsApplication", 0);
    boolean bool = paramContext.getBoolean("first_upgrade", true);
    paramContext.edit().putBoolean("first_upgrade", false).apply();
    return bool;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.BOOT_COMPLETED".equals(paramIntent.getAction()))
    {
      ezi.a("Babel", "Scheduling babel db cleanup after reboot", new Object[0]);
      if (a(paramContext)) {
        RealTimeChatService.a(paramContext, paramIntent.getAction(), paramContext.getPackageName());
      }
      ehb.a();
      dvd.q();
      SmsReceiver.a();
      Object localObject = dvd.l();
      paramIntent = (cyh)ilh.a(paramContext, cyh.class);
      if (localObject != null) {
        paramIntent.a(((bfd)localObject).g(), true);
      }
      localObject = dvd.r();
      int i = ((List)localObject).size();
      ezi.d("Babel", 41 + "On boot, found " + i + " ready accounts", new Object[0]);
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        bfd localbfd = (bfd)((Iterator)localObject).next();
        String str = String.valueOf(localbfd);
        ezi.c("Babel", String.valueOf(str).length() + 20 + "babel boot account: " + str, new Object[0]);
        if (localbfd != null) {
          paramIntent.a(localbfd.g(), true);
        }
      }
      ilh.b(paramContext, ctl.class);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.service.BootReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */