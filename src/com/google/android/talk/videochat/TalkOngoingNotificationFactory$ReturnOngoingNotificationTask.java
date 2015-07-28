package com.google.android.talk.videochat;

import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import com.google.android.talk.BuddyListCombo;
import com.google.android.talk.DatabaseUtils;
import com.google.android.videochat.OngoingNotificationFactory.OngoingNotificationReadyCallback;

class TalkOngoingNotificationFactory$ReturnOngoingNotificationTask
  extends AsyncTask<String, Void, Long>
{
  private OngoingNotificationFactory.OngoingNotificationReadyCallback mCallback;
  private String mRemoteBareJid;
  private Boolean mVideo;
  
  public TalkOngoingNotificationFactory$ReturnOngoingNotificationTask(TalkOngoingNotificationFactory paramTalkOngoingNotificationFactory, OngoingNotificationFactory.OngoingNotificationReadyCallback paramOngoingNotificationReadyCallback, String paramString, boolean paramBoolean)
  {
    mCallback = paramOngoingNotificationReadyCallback;
    mRemoteBareJid = paramString;
    mVideo = Boolean.valueOf(paramBoolean);
  }
  
  protected Long doInBackground(String... paramVarArgs)
  {
    return Long.valueOf(DatabaseUtils.getAccountIdForUsername(TalkOngoingNotificationFactory.access$000(this$0).getContentResolver(), paramVarArgs[0]));
  }
  
  protected void onPostExecute(Long paramLong)
  {
    Notification.Builder localBuilder = new Notification.Builder(TalkOngoingNotificationFactory.access$000(this$0));
    Resources localResources = TalkOngoingNotificationFactory.access$000(this$0).getResources();
    int i;
    if (mVideo.booleanValue())
    {
      i = 2130837692;
      localBuilder.setSmallIcon(i);
      if (!mVideo.booleanValue()) {
        break label158;
      }
      localBuilder.setContentTitle(localResources.getString(2131493073));
      localBuilder.setContentText(localResources.getString(2131493074));
      localBuilder.setContentIntent(PendingIntent.getActivity(TalkOngoingNotificationFactory.access$000(this$0), 0, new Intent("android.intent.action.VIEW").setClass(TalkOngoingNotificationFactory.access$000(this$0), VideoChatActivity.class).setFlags(335544320).putExtra("from", mRemoteBareJid).putExtra("accountId", paramLong), 0));
    }
    for (;;)
    {
      mCallback.onOngoingNotificationReady(localBuilder.getNotification());
      return;
      i = 2130837691;
      break;
      label158:
      localBuilder.setContentTitle(localResources.getString(2131493075));
      localBuilder.setContentText(localResources.getString(2131493076));
      localBuilder.setContentIntent(PendingIntent.getActivity(TalkOngoingNotificationFactory.access$000(this$0), 0, new Intent("android.intent.action.VIEW").setClass(TalkOngoingNotificationFactory.access$000(this$0), BuddyListCombo.class).setFlags(335544320).putExtra("from", mRemoteBareJid).putExtra("accountId", paramLong), 0));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.TalkOngoingNotificationFactory.ReturnOngoingNotificationTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */