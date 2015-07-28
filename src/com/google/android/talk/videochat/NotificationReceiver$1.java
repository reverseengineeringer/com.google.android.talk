package com.google.android.talk.videochat;

import android.content.Context;
import com.google.android.talk.DatabaseUtils;

class NotificationReceiver$1
  implements Runnable
{
  NotificationReceiver$1(NotificationReceiver paramNotificationReceiver, Context paramContext, String paramString1, IncomingCallNotifier paramIncomingCallNotifier, String paramString2, boolean paramBoolean) {}
  
  public void run()
  {
    long l = DatabaseUtils.getAccountIdForUsername(val$context.getContentResolver(), val$localBareJid);
    val$notifier.postNotification(val$remoteJid, l, val$isVideo, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.NotificationReceiver.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */