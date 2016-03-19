package com.google.android.apps.hangouts.realtimechat;

import aal;
import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import bfd;
import dvd;
import edb;
import eea;
import ezi;
import imx;

public class BackgroundGcmTickleService
  extends IntentService
{
  private static final boolean a = false;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  public BackgroundGcmTickleService()
  {
    super("BackgroundGcmTickleService");
  }
  
  public static void a(Context paramContext, boolean paramBoolean)
  {
    Object localObject = new Intent(paramContext, BackgroundGcmTickleService.class);
    ((Intent)localObject).putExtra("op", 1);
    localObject = PendingIntent.getService(paramContext, 0, (Intent)localObject, 0);
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    if (!paramBoolean)
    {
      localAlarmManager.cancel((PendingIntent)localObject);
      ((PendingIntent)localObject).cancel();
      return;
    }
    long l2 = aal.a(aal.oJ, "babel_background_gcm_tickle_polling_interval_ms", eea.m);
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    long l1 = l2;
    if (paramContext != null)
    {
      l1 = l2;
      if (paramContext.getType() == 0) {
        l1 = l2 * 2L;
      }
    }
    if (a) {
      new StringBuilder(61).append("Schedule gcm tickle with interval in ms: ").append(l1);
    }
    localAlarmManager.set(2, l1 + SystemClock.elapsedRealtime(), (PendingIntent)localObject);
  }
  
  public static boolean a(Context paramContext)
  {
    boolean bool = false;
    if (PendingIntent.getService(paramContext, 0, new Intent(paramContext, BackgroundGcmTickleService.class), 536870912) != null) {
      bool = true;
    }
    return bool;
  }
  
  protected void a()
  {
    Context localContext = aal.oJ;
    Object localObject1 = ((ConnectivityManager)localContext.getSystemService("connectivity")).getActiveNetworkInfo();
    int i;
    int j;
    if ((localObject1 != null) && ((((NetworkInfo)localObject1).getType() == 0) || (((NetworkInfo)localObject1).getType() == 1) || (((NetworkInfo)localObject1).getType() == 6)))
    {
      i = 1;
      if (i != 0)
      {
        localObject1 = dvd.g();
        j = localObject1.length;
        i = 0;
      }
    }
    for (;;)
    {
      if (i < j)
      {
        Object localObject2 = dvd.e(localObject1[i]);
        if (localObject2 != null)
        {
          localObject2 = edb.a((bfd)localObject2);
          if (localObject2 != null) {
            ((edb)localObject2).p_();
          }
        }
      }
      else
      {
        a(localContext, true);
        return;
        i = 0;
        break;
      }
      i += 1;
    }
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      ezi.d("Babel", "BackgroundGcmTickleService onHandleIntent called with null intent", new Object[0]);
      return;
    }
    int i = paramIntent.getIntExtra("op", 0);
    String str;
    if (a)
    {
      str = String.valueOf(paramIntent);
      switch (i)
      {
      default: 
        paramIntent = String.valueOf(Integer.toString(i));
      }
    }
    for (paramIntent = String.valueOf(paramIntent).length() + 17 + "(unknown opCode " + paramIntent + ")";; paramIntent = "OP_PERFORM_AND_SCHEDULE_GCM_TICKLE")
    {
      paramIntent = String.valueOf(paramIntent);
      new StringBuilder(String.valueOf(str).length() + 24 + String.valueOf(paramIntent).length()).append("onHandleIntent ").append(str).append(" opCode: ").append(paramIntent);
      switch (i)
      {
      default: 
        return;
      }
      a();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.realtimechat.BackgroundGcmTickleService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */