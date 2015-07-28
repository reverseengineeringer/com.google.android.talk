package com.google.android.talk.videochat;

import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gsf.TalkContract.AccountSettings.QueryMap;
import com.google.android.gsf.TalkContract.Contacts;
import com.google.android.talk.AlertNotificationActivity;
import com.google.android.talk.AlertNotificationFullScreenActivity;
import com.google.android.talk.SettingsCache;
import com.google.android.talk.StringUtils;
import com.google.android.talk.TalkApp;
import com.google.android.videochat.CallState;

public class IncomingCallNotifier
{
  private static final String[] NICKNAME_PROJECTION = { "nickname" };
  private static IncomingCallNotifier sNotifier;
  private Context mContext;
  private Handler mHandler;
  NotificationManager mNotificationManager;
  private TalkContract.AccountSettings.QueryMap mSettingsQueryMap;
  
  private IncomingCallNotifier(Context paramContext)
  {
    mContext = paramContext;
    mNotificationManager = ((NotificationManager)mContext.getSystemService("notification"));
    mHandler = new Handler();
  }
  
  private Notification createSystemNotification(String paramString, Intent paramIntent, boolean paramBoolean1, boolean paramBoolean2)
  {
    Notification localNotification = new Notification();
    Object localObject;
    Context localContext;
    if (paramBoolean1)
    {
      localObject = mContext.getString(2131493057);
      icon = 2130837695;
      tickerText = String.format((String)localObject, new Object[] { paramString });
      flags |= 0x23;
      defaults |= 0x4;
      localObject = new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS");
      mContext.sendBroadcast((Intent)localObject);
      paramIntent = PendingIntent.getActivity(mContext, 0, paramIntent, 134217728);
      localObject = mContext;
      localContext = mContext;
      if (!paramBoolean1) {
        break label171;
      }
    }
    label171:
    for (int i = 2131493060;; i = 2131493061)
    {
      localNotification.setLatestEventInfo((Context)localObject, localContext.getString(i), paramString, paramIntent);
      if (!paramBoolean2) {
        break label178;
      }
      return localNotification;
      localObject = mContext.getString(2131493059);
      icon = 2130837693;
      break;
    }
    label178:
    setNotificationRinger(localNotification);
    return localNotification;
  }
  
  private String getNickname(String paramString, long paramLong)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    Cursor localCursor = mContext.getContentResolver().query(TalkContract.Contacts.CONTENT_URI, NICKNAME_PROJECTION, "username=? AND account=?", new String[] { paramString, String.valueOf(paramLong) }, null);
    if (localCursor != null) {
      localObject1 = localObject2;
    }
    try
    {
      if (localCursor.moveToFirst()) {
        localObject1 = localCursor.getString(0);
      }
      localCursor.close();
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = paramString;
      }
      return (String)localObject2;
    }
    finally
    {
      localCursor.close();
    }
  }
  
  public static IncomingCallNotifier getNotifier(Context paramContext)
  {
    if (sNotifier == null) {
      sNotifier = new IncomingCallNotifier(paramContext);
    }
    return sNotifier;
  }
  
  private void log(String paramString)
  {
    TalkApp.LOG(3, "talk", "[IncomingCallNotifier] " + paramString);
  }
  
  private void setNotificationRinger(Notification paramNotification)
  {
    Object localObject = mSettingsQueryMap.getVideoRingtoneURI();
    String str = mSettingsQueryMap.getVideoVibrateWhen();
    boolean bool = str.equals("always");
    int i;
    int j;
    if ((!bool) && (str.equals("silent")))
    {
      i = 1;
      if (((AudioManager)mContext.getSystemService("audio")).getRingerMode() != 1) {
        break label111;
      }
      j = 1;
      label65:
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        break label116;
      }
    }
    label111:
    label116:
    for (localObject = null;; localObject = Uri.parse((String)localObject))
    {
      sound = ((Uri)localObject);
      if ((bool) || ((i != 0) && (j != 0))) {
        defaults |= 0x2;
      }
      return;
      i = 0;
      break;
      j = 0;
      break label65;
    }
  }
  
  public void cancelNotification()
  {
    log("##### cancelNotification");
    synchronized (mNotificationManager)
    {
      mNotificationManager.cancel(100);
      RingerService.forceStopRinger(mContext);
      return;
    }
  }
  
  public void postNotification(String paramString, long paramLong, boolean paramBoolean, CallState paramCallState)
  {
    log("##### postNotification for " + paramString);
    for (;;)
    {
      synchronized (mNotificationManager)
      {
        if (mSettingsQueryMap == null) {
          mSettingsQueryMap = SettingsCache.getInstance().getSettingsMap(paramLong);
        }
        boolean bool = "popup".equals(mSettingsQueryMap.getVideoNotification());
        String str1 = StringUtils.parseBareAddress(paramString);
        String str2 = getNickname(str1, paramLong);
        localObject = (KeyguardManager)mContext.getSystemService("keyguard");
        Context localContext = mContext;
        if (((KeyguardManager)localObject).inKeyguardRestrictedInputMode())
        {
          localObject = AlertNotificationFullScreenActivity.class;
          localObject = new Intent(localContext, (Class)localObject);
          ((Intent)localObject).putExtra("from", paramString);
          ((Intent)localObject).putExtra("accountId", paramLong);
          ((Intent)localObject).putExtra("isvideo", paramBoolean);
          ((Intent)localObject).putExtra("iscollision", paramCallState);
          ((Intent)localObject).putExtra("incoming_call", true);
          ((Intent)localObject).setFlags(268697600);
          paramString = createSystemNotification(str2, (Intent)localObject, paramBoolean, bool);
          mNotificationManager.notify(100, paramString);
          if (bool)
          {
            TalkApp.LOGD("talk", "[IncomingCallNotifier] postNotification: manually start activity for full screen incoming call alert");
            mContext.startActivity((Intent)localObject);
            RingerService.startServiceForIncomingRinger(mContext, str1, paramLong);
          }
          return;
        }
      }
      Object localObject = AlertNotificationActivity.class;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.IncomingCallNotifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */