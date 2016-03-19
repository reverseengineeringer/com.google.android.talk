package com.google.android.apps.hangouts.sms;

import aal;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.telephony.gsm.SmsMessage;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.service.NoConfirmationSmsSendService;
import dvd;
import dvi;
import ezi;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class SmsReceiver
  extends BroadcastReceiver
{
  private static Pattern[] a;
  
  public static void a()
  {
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3;
    int i;
    Object localObject;
    PackageManager localPackageManager;
    if (Build.VERSION.SDK_INT >= 19)
    {
      bool3 = dvd.j();
      i = 0;
      bool1 = true;
      localObject = aal.oJ;
      localPackageManager = ((Context)localObject).getPackageManager();
      if (!bool3) {
        break label178;
      }
      localPackageManager.setComponentEnabledSetting(new ComponentName((Context)localObject, SmsReceiver.class), 1, 1);
      label54:
      if (i == 0) {
        break label199;
      }
      localPackageManager.setComponentEnabledSetting(new ComponentName((Context)localObject, MmsWapPushReceiver.class), 1, 1);
      label76:
      if (!bool2) {
        break label220;
      }
      localPackageManager.setComponentEnabledSetting(new ComponentName((Context)localObject, AbortSmsReceiver.class), 1, 1);
      localPackageManager.setComponentEnabledSetting(new ComponentName((Context)localObject, AbortMmsWapPushReceiver.class), 1, 1);
    }
    for (;;)
    {
      if (!bool1) {
        break label259;
      }
      localPackageManager.setComponentEnabledSetting(new ComponentName((Context)localObject, NoConfirmationSmsSendService.class), 1, 1);
      return;
      if (!dvd.j())
      {
        localObject = dvd.d;
        bool2 = bool1;
        if (!dvi.a()) {}
      }
      else
      {
        bool2 = true;
      }
      localObject = dvd.d;
      bool1 = dvi.a();
      i = bool1;
      bool3 = bool2;
      bool2 = bool1;
      break;
      label178:
      localPackageManager.setComponentEnabledSetting(new ComponentName((Context)localObject, SmsReceiver.class), 2, 1);
      break label54;
      label199:
      localPackageManager.setComponentEnabledSetting(new ComponentName((Context)localObject, MmsWapPushReceiver.class), 2, 1);
      break label76;
      label220:
      localPackageManager.setComponentEnabledSetting(new ComponentName((Context)localObject, AbortSmsReceiver.class), 2, 1);
      localPackageManager.setComponentEnabledSetting(new ComponentName((Context)localObject, AbortMmsWapPushReceiver.class), 2, 1);
    }
    label259:
    localPackageManager.setComponentEnabledSetting(new ComponentName((Context)localObject, NoConfirmationSmsSendService.class), 2, 1);
  }
  
  public static boolean a(Intent paramIntent)
  {
    boolean bool2 = false;
    paramIntent = paramIntent.getExtras();
    boolean bool1 = bool2;
    Object localObject;
    int i;
    int j;
    if (paramIntent != null)
    {
      paramIntent = (Object[])paramIntent.get("pdus");
      bool1 = bool2;
      if (paramIntent.length > 0)
      {
        paramIntent = SmsMessage.createFromPdu((byte[])paramIntent[0]);
        bool1 = bool2;
        if (paramIntent != null) {
          try
          {
            paramIntent = paramIntent.getMessageBody();
            bool1 = bool2;
            if (paramIntent != null) {
              if (a == null)
              {
                localObject = aal.a(aal.oJ, "babel_sms_ignore_message_regex", "VZWNMN:\\d+\n//wma::\\d+\\s//.*\nActivate:dt=\\d+\n//ANDROID:.*//CM\n\\S+\\.attwireless\\.net:\\d+\\?.*\nvvm\\.mobile\\.att\\.net:\\d+\\?.*\n");
                if (localObject != null)
                {
                  localObject = ((String)localObject).split("\n");
                  if (localObject.length != 0)
                  {
                    a = new Pattern[localObject.length];
                    i = 0;
                    while (i < localObject.length)
                    {
                      a[i] = Pattern.compile(localObject[i]);
                      i += 1;
                    }
                  }
                }
              }
            }
          }
          catch (NullPointerException paramIntent)
          {
            for (;;)
            {
              ezi.d("Babel_SMS", "SmsReceiver: failed to get message body ", paramIntent);
              paramIntent = null;
            }
            localObject = a;
            j = localObject.length;
            i = 0;
          }
        }
      }
    }
    for (;;)
    {
      bool1 = bool2;
      if (i < j)
      {
        if (localObject[i].matcher(paramIntent).matches()) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (Build.VERSION.SDK_INT < 19)
    {
      paramContext = dvd.d;
      if ((dvi.a()) && (!a(paramIntent))) {
        RealTimeChatService.d(paramIntent);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.sms.SmsReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */