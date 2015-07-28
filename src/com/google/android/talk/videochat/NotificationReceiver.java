package com.google.android.talk.videochat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.talk.AlertNotificationActivity;
import com.google.android.talk.DatabaseUtils;

public class NotificationReceiver
  extends BroadcastReceiver
{
  static final Object mStartingServiceSync = new Object();
  
  public void onReceive(final Context paramContext, final Intent paramIntent)
  {
    Object localObject = paramIntent.getAction();
    if (((String)localObject).equals("com.google.android.talk.POST_NOTIFICATION"))
    {
      Log.d("talk", "received com.google.android.talk.POST_NOTIFICATION");
      localObject = paramIntent.getExtras();
      if (localObject == null) {
        Log.e("talk", "need appropriate intent extras for intent" + paramIntent);
      }
    }
    do
    {
      return;
      paramIntent = ((Bundle)localObject).getString("remote_jid");
      final String str = ((Bundle)localObject).getString("local_bare_jid");
      final boolean bool = ((Bundle)localObject).getBoolean("is_video", false);
      new Thread(new Runnable()
      {
        public void run()
        {
          long l = DatabaseUtils.getAccountIdForUsername(paramContext.getContentResolver(), str);
          val$notifier.postNotification(paramIntent, l, bool, null);
        }
      }).start();
      return;
      if (((String)localObject).equals("com.google.android.talk.CANCEL_NOTIFICATION"))
      {
        Log.d("talk", "received com.google.android.talk.CANCEL_NOTIFICATION");
        new Thread(new Runnable()
        {
          public void run()
          {
            val$notifier.cancelNotification();
          }
        }).start();
        return;
      }
    } while (!((String)localObject).equals("com.google.android.talk.RECEIVE_MESSAGE"));
    paramIntent.setClass(paramContext, AlertNotificationActivity.class);
    paramIntent.setFlags(268435456);
    paramContext.startActivity(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.NotificationReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */