package com.google.android.talk;

import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.google.android.gsf.Gservices;
import com.google.android.talk.videochat.JingleStanzaSender;

public class ConnectionStateOnlineReceiver
  extends BroadcastReceiver
{
  public static void dismissNotification(Context paramContext)
  {
    ((NotificationManager)paramContext.getSystemService("notification")).cancel(137);
  }
  
  private static boolean isAccountPendingSignInNotification(Context paramContext, String paramString)
  {
    boolean bool2 = false;
    paramContext = paramContext.getSharedPreferences("gtalk_prefs", 0).getString("sign_in", null);
    TalkApp.LOGD("talk", "isAccountPendingSignInNotification for " + paramString + " usernames from prefs: " + paramContext);
    boolean bool1 = bool2;
    int j;
    int i;
    if (paramContext != null)
    {
      paramContext = paramContext.split(",");
      j = paramContext.length;
      i = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      if (i < j)
      {
        if (paramString.equals(paramContext[i].trim())) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public static void markAccountForSignInNotification(Context paramContext, String paramString)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("gtalk_prefs", 0);
    paramContext = localSharedPreferences.getString("sign_in", null);
    TalkApp.LOGD("talk", "markAccountForSignInNotification for " + paramString + " usernames from prefs: " + paramContext);
    if (TextUtils.isEmpty(paramContext)) {}
    for (paramContext = paramString;; paramContext = paramContext + "," + paramString)
    {
      TalkApp.LOGD("talk", "markAccountForSignInNotification usernames after: " + paramContext);
      paramString = localSharedPreferences.edit();
      paramString.putString("sign_in", paramContext);
      paramString.apply();
      return;
    }
  }
  
  public static void markAccountNotified(Context paramContext, String paramString)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("gtalk_prefs", 0);
    Object localObject = localSharedPreferences.getString("sign_in", null);
    TalkApp.LOGD("talk", "markAccountNotified for " + paramString + " usernames from prefs: " + (String)localObject);
    paramContext = (Context)localObject;
    if (localObject != null)
    {
      paramContext = ((String)localObject).split(",");
      localObject = new StringBuilder();
      int i = 1;
      int m = paramContext.length;
      int j = 0;
      if (j < m)
      {
        String str = paramContext[j];
        int k = i;
        if (!paramString.equals(str.trim()))
        {
          if (i != 0) {
            break label147;
          }
          ((StringBuilder)localObject).append(',');
        }
        for (;;)
        {
          ((StringBuilder)localObject).append(str);
          k = i;
          j += 1;
          i = k;
          break;
          label147:
          i = 0;
        }
      }
      paramContext = ((StringBuilder)localObject).toString();
    }
    TalkApp.LOGD("talk", "markAccountNotified usernames after: " + paramContext);
    paramString = localSharedPreferences.edit();
    paramString.putString("sign_in", paramContext);
    paramString.apply();
  }
  
  private void showNotification(Context paramContext, String paramString)
  {
    if (!isAccountPendingSignInNotification(paramContext, paramString)) {
      return;
    }
    if (Gservices.getBoolean(paramContext.getContentResolver(), "gtalk_notify_first_login", false))
    {
      Object localObject = new Intent("android.intent.action.VIEW", null);
      ((Intent)localObject).setClass(paramContext, AccountSelectionActivity.class);
      ((Intent)localObject).putExtra("username", paramString);
      localObject = new Notification.Builder(paramContext).setTicker(paramContext.getString(2131493115, new Object[] { paramString })).setWhen(System.currentTimeMillis()).setContentTitle(paramContext.getString(2131493114)).setContentText(paramString).setContentIntent(PendingIntent.getActivity(paramContext, 0, (Intent)localObject, 134217728)).setSmallIcon(2130837694);
      ((NotificationManager)paramContext.getSystemService("notification")).notify(137, ((Notification.Builder)localObject).getNotification());
    }
    markAccountNotified(paramContext, paramString);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    TalkApp.LOGD("talk", "received " + paramIntent);
    if ("com.google.android.talk.CONN_STATE_ONLINE".equals(paramIntent.getAction()))
    {
      paramIntent = paramIntent.getStringExtra("username");
      TalkApp.LOGD("talk", "query Jingle Info for " + paramIntent);
      if (!TextUtils.isEmpty(paramIntent))
      {
        JingleStanzaSender.queryJingleInfo(paramContext, paramIntent);
        showNotification(paramContext, paramIntent);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ConnectionStateOnlineReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */