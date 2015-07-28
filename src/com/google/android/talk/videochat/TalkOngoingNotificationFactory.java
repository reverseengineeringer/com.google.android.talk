package com.google.android.talk.videochat;

import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import com.google.android.talk.BuddyListCombo;
import com.google.android.talk.DatabaseUtils;
import com.google.android.videochat.OngoingNotificationFactory;
import com.google.android.videochat.OngoingNotificationFactory.OngoingNotificationReadyCallback;

public class TalkOngoingNotificationFactory
  implements OngoingNotificationFactory
{
  private static volatile OngoingNotificationFactory sInstance = null;
  private static final Object sLock = new Object();
  private Context mContext;
  
  private TalkOngoingNotificationFactory(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public static OngoingNotificationFactory getInstance(Context paramContext)
  {
    if (sInstance == null) {}
    synchronized (sLock)
    {
      if (sInstance == null) {
        sInstance = new TalkOngoingNotificationFactory(paramContext.getApplicationContext());
      }
      return sInstance;
    }
  }
  
  public void requestOngoingNotification(OngoingNotificationFactory.OngoingNotificationReadyCallback paramOngoingNotificationReadyCallback, String paramString1, String paramString2, boolean paramBoolean)
  {
    new ReturnOngoingNotificationTask(paramOngoingNotificationReadyCallback, paramString1, paramBoolean).execute(new String[] { paramString2 });
  }
  
  private class ReturnOngoingNotificationTask
    extends AsyncTask<String, Void, Long>
  {
    private OngoingNotificationFactory.OngoingNotificationReadyCallback mCallback;
    private String mRemoteBareJid;
    private Boolean mVideo;
    
    public ReturnOngoingNotificationTask(OngoingNotificationFactory.OngoingNotificationReadyCallback paramOngoingNotificationReadyCallback, String paramString, boolean paramBoolean)
    {
      mCallback = paramOngoingNotificationReadyCallback;
      mRemoteBareJid = paramString;
      mVideo = Boolean.valueOf(paramBoolean);
    }
    
    protected Long doInBackground(String... paramVarArgs)
    {
      return Long.valueOf(DatabaseUtils.getAccountIdForUsername(mContext.getContentResolver(), paramVarArgs[0]));
    }
    
    protected void onPostExecute(Long paramLong)
    {
      Notification.Builder localBuilder = new Notification.Builder(mContext);
      Resources localResources = mContext.getResources();
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
        localBuilder.setContentIntent(PendingIntent.getActivity(mContext, 0, new Intent("android.intent.action.VIEW").setClass(mContext, VideoChatActivity.class).setFlags(335544320).putExtra("from", mRemoteBareJid).putExtra("accountId", paramLong), 0));
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
        localBuilder.setContentIntent(PendingIntent.getActivity(mContext, 0, new Intent("android.intent.action.VIEW").setClass(mContext, BuddyListCombo.class).setFlags(335544320).putExtra("from", mRemoteBareJid).putExtra("accountId", paramLong), 0));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.TalkOngoingNotificationFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */