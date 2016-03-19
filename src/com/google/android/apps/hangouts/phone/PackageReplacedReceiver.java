package com.google.android.apps.hangouts.phone;

import aal;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import bfd;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.sms.SmsReceiver;
import ctl;
import dty;
import dvd;
import dwt;
import ebq;
import ehb;
import eot;
import ezi;
import hqn;
import iaf;
import iai;
import ilh;
import imx;

public class PackageReplacedReceiver
  extends BroadcastReceiver
{
  private static final boolean a = false;
  
  static
  {
    imx localimx = ezi.k;
  }
  
  private static void a(Context paramContext)
  {
    int i = 0;
    SmsReceiver.a();
    synchronized (dwt.a())
    {
      if (a == 102)
      {
        ezi.a("BabelGcmRegistration", "GcmRegistration: Forcing re-registration", new Object[0]);
        ((dwt)???).a(null, 100);
        ((dwt)???).h();
      }
      if (((dty)ilh.a(paramContext, dty.class)).a(paramContext))
      {
        paramContext = (eot)ilh.a(paramContext, eot.class);
        ??? = dvd.e();
        int j = ???.length;
        if (i < j)
        {
          int k = ???[i];
          bfd localbfd = dvd.e(k);
          if ((localbfd != null) && (!paramContext.a(k)) && (localbfd.N() == 0)) {
            RealTimeChatService.e(localbfd.g());
          }
          i += 1;
        }
      }
    }
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    if (a) {
      new StringBuilder(String.valueOf(paramString1).length() + 41 + String.valueOf(paramString2).length()).append("handlePackageChanged action:").append(paramString1).append(" packageName:").append(paramString2);
    }
    boolean bool1 = "com.google.android.gms".equals(paramString2);
    boolean bool2 = paramContext.getPackageName().equals(paramString2);
    if ((bool1) && ("android.intent.action.PACKAGE_CHANGED".equals(paramString1)))
    {
      aal.a(true, true, false);
      return;
    }
    int i;
    if (bool1)
    {
      ezi.d("Babel", "Gms package replaced. Will trigger a restart of babel", new Object[0]);
      if (aal.f(paramContext).getBoolean("gms_core_valid", false))
      {
        ezi.a("Babel", "Skip forced warm sync since previous gmscore is valid.", new Object[0]);
        i = 1;
        label134:
        cbr.k = true;
        dvd.s();
      }
    }
    for (;;)
    {
      if ("android.intent.action.BOOT_COMPLETED".equals(paramString1)) {}
      for (bool1 = false;; bool1 = true)
      {
        if (!aal.a(bool1, true))
        {
          ezi.d("Babel", "GmsCore check failed during package upgrade", new Object[0]);
          return;
        }
        int j = i;
        if (bool2) {}
        try
        {
          ((iaf)ilh.a(paramContext, iaf.class)).a(new iai().c());
          if (paramString1.equals("android.intent.action.PACKAGE_REMOVED"))
          {
            j = 1;
            ehb.b();
            ehb.a();
            dvd.q();
            if (j != 0) {
              break;
            }
            ezi.a("Babel", "Force warm sync for all signed in accounts after package upgrades", new Object[0]);
            paramContext = dvd.d(true);
            j = paramContext.length;
            i = 0;
            while (i < j)
            {
              int k = paramContext[i];
              if (dvd.e(k) != null) {
                RealTimeChatService.a(k, false, ebq.a);
              }
              i += 1;
            }
          }
        }
        catch (hqn paramString2)
        {
          for (;;)
          {
            ezi.c("Babel", "Account refresh failed", paramString2);
            continue;
            a(paramContext);
            j = i;
          }
        }
      }
      i = 0;
      break label134;
      i = 0;
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (a)
    {
      str = String.valueOf(paramIntent);
      new StringBuilder(String.valueOf(str).length() + 24).append("PackageReplacedReceiver ").append(str);
    }
    String str = paramIntent.getData().getSchemeSpecificPart();
    boolean bool1 = "com.google.android.gms".equals(str);
    boolean bool2 = paramContext.getPackageName().equals(str);
    if ((!bool1) && (!bool2)) {}
    while ((!bool1) && ("android.intent.action.PACKAGE_CHANGED".equals(paramIntent.getAction()))) {
      return;
    }
    RealTimeChatService.a(paramContext, paramIntent.getAction(), str);
    ilh.b(paramContext, ctl.class);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.PackageReplacedReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */