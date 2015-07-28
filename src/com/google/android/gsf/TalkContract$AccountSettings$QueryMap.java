package com.google.android.gsf;

import android.content.ContentQueryMap;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;

public class TalkContract$AccountSettings$QueryMap
  extends ContentQueryMap
{
  private long mAccountId;
  private ContentResolver mContentResolver;
  
  public TalkContract$AccountSettings$QueryMap(ContentResolver paramContentResolver, boolean paramBoolean, long paramLong, Handler paramHandler)
  {
    super(paramContentResolver.query(TalkContract.AccountSettings.getContentUriByAccountId(paramLong), new String[] { "name", "value" }, null, null, null), "name", paramBoolean, paramHandler);
    mContentResolver = paramContentResolver;
    mAccountId = paramLong;
  }
  
  private boolean getBoolean(String paramString, boolean paramBoolean)
  {
    paramString = getValues(paramString);
    if (paramString != null) {
      paramBoolean = paramString.getAsBoolean("value").booleanValue();
    }
    return paramBoolean;
  }
  
  private long getLong(String paramString, long paramLong)
  {
    paramString = getValues(paramString);
    if (paramString != null) {
      paramLong = paramString.getAsLong("value").longValue();
    }
    return paramLong;
  }
  
  private String getString(String paramString1, String paramString2)
  {
    paramString1 = getValues(paramString1);
    if (paramString1 != null) {
      paramString2 = paramString1.getAsString("value");
    }
    return paramString2;
  }
  
  private static boolean isTablet(Context paramContext)
  {
    return (getResourcesgetConfigurationscreenLayout & 0xF) > 3;
  }
  
  public boolean getAudioChatEnabled()
  {
    return TalkContract.AccountSettings.access$000(getLong("audiochatv2", 2L));
  }
  
  public boolean getCameraEnabled()
  {
    return TalkContract.AccountSettings.access$000(getLong("show_camera", 2L));
  }
  
  public int getCapabilities()
  {
    int j = 8;
    if (getAudioChatEnabled()) {
      j = 0x8 | 0x1;
    }
    int i = j;
    if (getVideoChatEnabled())
    {
      j |= 0x2;
      i = j;
      if (getCameraEnabled()) {
        i = j | 0x4;
      }
    }
    return i;
  }
  
  public boolean getNotifyFriendInvitation()
  {
    return getBoolean("notify_invite", true);
  }
  
  public boolean getShowAwayOnIdle()
  {
    return getBoolean("show_away_on_idle", true);
  }
  
  public boolean getShowMobileIndicator(Context paramContext)
  {
    if (!isTablet(paramContext)) {}
    for (boolean bool = true;; bool = false) {
      return getBoolean("mobile_indicator", bool);
    }
  }
  
  public String getTextNotification()
  {
    return getString("text-notif-type", "statusbar");
  }
  
  public String getTextRingtoneURI()
  {
    return getString("ringtone", "content://settings/system/notification_sound");
  }
  
  public boolean getTextVibrate()
  {
    return getBoolean("vibrate", false);
  }
  
  public String getTextVibrateWhen()
  {
    String str = getString("vibrate-when", null);
    if (str != null) {
      return str;
    }
    if (getTextVibrate()) {}
    for (str = "silent";; str = "never") {
      return str;
    }
  }
  
  public boolean getVideoChatEnabled()
  {
    return TalkContract.AccountSettings.access$000(getLong("videochatv2", 2L));
  }
  
  public String getVideoImageStabilization()
  {
    return getString("video-image-stabilization", null);
  }
  
  public String getVideoNotification()
  {
    return getString("video-notif-type", "popup");
  }
  
  public String getVideoRingtoneURI()
  {
    return getString("ringtone-video", "content://settings/system/ringtone");
  }
  
  public boolean getVideoVibrate()
  {
    return getBoolean("vibrate-video", false);
  }
  
  public String getVideoVibrateWhen()
  {
    String str = getString("vibrate-when-video", null);
    if (str != null) {
      return str;
    }
    if (getVideoVibrate()) {}
    for (str = "silent";; str = "never") {
      return str;
    }
  }
  
  public void setAudioChatEnabled(boolean paramBoolean)
  {
    TalkContract.AccountSettings.setAudioChatEnabled(mContentResolver, paramBoolean, mAccountId);
  }
  
  public void setCameraEnabled(boolean paramBoolean)
  {
    TalkContract.AccountSettings.setCameraEnabled(mContentResolver, paramBoolean, mAccountId);
  }
  
  public void setNotifyFriendInvitation(boolean paramBoolean)
  {
    TalkContract.AccountSettings.setNotifyFriendInvitation(mContentResolver, paramBoolean, mAccountId);
  }
  
  public void setShowAwayOnIdle(boolean paramBoolean)
  {
    TalkContract.AccountSettings.setShowAwayOnIdle(mContentResolver, paramBoolean, mAccountId);
  }
  
  public void setShowMobileIndicator(boolean paramBoolean)
  {
    TalkContract.AccountSettings.setShowMobileIndicator(mContentResolver, paramBoolean, mAccountId);
  }
  
  public void setTextNotification(String paramString)
  {
    TalkContract.AccountSettings.setNotificationType(mContentResolver, paramString, mAccountId);
  }
  
  public void setTextRingtoneURI(String paramString)
  {
    TalkContract.AccountSettings.setTextRingtoneURI(mContentResolver, paramString, mAccountId);
  }
  
  public void setTextVibrateWhen(String paramString)
  {
    TalkContract.AccountSettings.setTextVibrateWhen(mContentResolver, paramString, mAccountId);
  }
  
  public void setVideoChatEnabled(boolean paramBoolean)
  {
    TalkContract.AccountSettings.setVideoChatEnabled(mContentResolver, paramBoolean, mAccountId);
  }
  
  public void setVideoImageStabilization(String paramString)
  {
    TalkContract.AccountSettings.setVideoImageStabilization(mContentResolver, paramString, mAccountId);
  }
  
  public void setVideoNotification(String paramString)
  {
    TalkContract.AccountSettings.setVideoNotificationType(mContentResolver, paramString, mAccountId);
  }
  
  public void setVideoRingtoneURI(String paramString)
  {
    TalkContract.AccountSettings.setVideoRingtoneURI(mContentResolver, paramString, mAccountId);
  }
  
  public void setVideoVibrateWhen(String paramString)
  {
    TalkContract.AccountSettings.setVideoVibrateWhen(mContentResolver, paramString, mAccountId);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gsf.TalkContract.AccountSettings.QueryMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */