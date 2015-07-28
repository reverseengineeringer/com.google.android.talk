package com.google.android.gsf;

import android.content.ContentQueryMap;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Handler;
import android.provider.BaseColumns;

public class TalkContract
{
  public static final Uri AUTHORITY_URI = Uri.parse("content://com.google.android.providers.talk");
  
  public static final class Account
    implements BaseColumns
  {
    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.providers.talk/accounts");
    public static final Uri CONTENT_URI_WITH_STATUS = Uri.parse("content://com.google.android.providers.talk/accounts/status");
  }
  
  public static class AccountSettings
  {
    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.providers.talk/accountSettings");
    
    public static final Uri getContentUriByAccountId(long paramLong)
    {
      Uri.Builder localBuilder = CONTENT_URI.buildUpon();
      ContentUris.appendId(localBuilder, paramLong);
      return localBuilder.build();
    }
    
    private static int getSettingValue(boolean paramBoolean)
    {
      if (paramBoolean) {
        return 1;
      }
      return 2;
    }
    
    private static boolean isEnabled(long paramLong)
    {
      return (0x3 & paramLong) == 1L;
    }
    
    public static void putBooleanValue(ContentResolver paramContentResolver, String paramString, boolean paramBoolean, long paramLong)
    {
      ContentValues localContentValues = new ContentValues(3);
      localContentValues.put("name", paramString);
      localContentValues.put("value", Boolean.toString(paramBoolean));
      localContentValues.put("account_id", Long.valueOf(paramLong));
      paramContentResolver.insert(CONTENT_URI, localContentValues);
    }
    
    public static void putLongValue(ContentResolver paramContentResolver, String paramString, long paramLong1, long paramLong2)
    {
      ContentValues localContentValues = new ContentValues(3);
      localContentValues.put("name", paramString);
      localContentValues.put("value", Long.valueOf(paramLong1));
      localContentValues.put("account_id", Long.valueOf(paramLong2));
      paramContentResolver.insert(CONTENT_URI, localContentValues);
    }
    
    public static void putStringValue(ContentResolver paramContentResolver, String paramString1, String paramString2, long paramLong)
    {
      ContentValues localContentValues = new ContentValues(3);
      localContentValues.put("name", paramString1);
      localContentValues.put("value", paramString2);
      localContentValues.put("account_id", Long.valueOf(paramLong));
      paramContentResolver.insert(CONTENT_URI, localContentValues);
    }
    
    public static void setAudioChatEnabled(ContentResolver paramContentResolver, boolean paramBoolean, long paramLong)
    {
      putLongValue(paramContentResolver, "audiochatv2", getSettingValue(paramBoolean), paramLong);
    }
    
    public static void setCameraEnabled(ContentResolver paramContentResolver, boolean paramBoolean, long paramLong)
    {
      putLongValue(paramContentResolver, "show_camera", getSettingValue(paramBoolean), paramLong);
    }
    
    public static void setNotificationType(ContentResolver paramContentResolver, String paramString, long paramLong)
    {
      putStringValue(paramContentResolver, "text-notif-type", paramString, paramLong);
    }
    
    public static void setNotifyFriendInvitation(ContentResolver paramContentResolver, boolean paramBoolean, long paramLong)
    {
      putBooleanValue(paramContentResolver, "notify_invite", paramBoolean, paramLong);
    }
    
    public static void setShowAwayOnIdle(ContentResolver paramContentResolver, boolean paramBoolean, long paramLong)
    {
      putBooleanValue(paramContentResolver, "show_away_on_idle", paramBoolean, paramLong);
    }
    
    public static void setShowMobileIndicator(ContentResolver paramContentResolver, boolean paramBoolean, long paramLong)
    {
      putBooleanValue(paramContentResolver, "mobile_indicator", paramBoolean, paramLong);
    }
    
    public static void setTextRingtoneURI(ContentResolver paramContentResolver, String paramString, long paramLong)
    {
      putStringValue(paramContentResolver, "ringtone", paramString, paramLong);
    }
    
    public static void setTextVibrateWhen(ContentResolver paramContentResolver, String paramString, long paramLong)
    {
      putStringValue(paramContentResolver, "vibrate-when", paramString, paramLong);
    }
    
    public static void setVideoChatEnabled(ContentResolver paramContentResolver, boolean paramBoolean, long paramLong)
    {
      putLongValue(paramContentResolver, "videochatv2", getSettingValue(paramBoolean), paramLong);
    }
    
    public static void setVideoImageStabilization(ContentResolver paramContentResolver, String paramString, long paramLong)
    {
      putStringValue(paramContentResolver, "video-image-stabilization", paramString, paramLong);
    }
    
    public static void setVideoNotificationType(ContentResolver paramContentResolver, String paramString, long paramLong)
    {
      putStringValue(paramContentResolver, "video-notif-type", paramString, paramLong);
    }
    
    public static void setVideoRingtoneURI(ContentResolver paramContentResolver, String paramString, long paramLong)
    {
      putStringValue(paramContentResolver, "ringtone-video", paramString, paramLong);
    }
    
    public static void setVideoVibrateWhen(ContentResolver paramContentResolver, String paramString, long paramLong)
    {
      putStringValue(paramContentResolver, "vibrate-when-video", paramString, paramLong);
    }
    
    public static class QueryMap
      extends ContentQueryMap
    {
      private long mAccountId;
      private ContentResolver mContentResolver;
      
      public QueryMap(ContentResolver paramContentResolver, boolean paramBoolean, long paramLong, Handler paramHandler)
      {
        super("name", paramBoolean, paramHandler);
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
        return TalkContract.AccountSettings.isEnabled(getLong("audiochatv2", 2L));
      }
      
      public boolean getCameraEnabled()
      {
        return TalkContract.AccountSettings.isEnabled(getLong("show_camera", 2L));
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
        return TalkContract.AccountSettings.isEnabled(getLong("videochatv2", 2L));
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
  }
  
  public static final class AccountStatus
    implements BaseColumns
  {
    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.providers.talk/accountStatus");
    public static final Uri CONTENT_URI_UNREAD_CHATS = Uri.parse("content://com.google.android.providers.talk/accountStatus/new_messages");
  }
  
  public static final class Avatars
    implements BaseColumns
  {
    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.providers.talk/avatars");
    public static final Uri CONTENT_URI_AVATARS_BY = Uri.parse("content://com.google.android.providers.talk/avatarsBy");
  }
  
  public static final class Chats
    implements BaseColumns
  {
    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.providers.talk/chats");
    public static final Uri CONTENT_URI_BY_ACCOUNT = Uri.parse("content://com.google.android.providers.talk/chats/account");
  }
  
  public static final class Contacts
    implements BaseColumns
  {
    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.providers.talk/contacts");
    public static final Uri CONTENT_URI_BLOCKED_CONTACTS = Uri.parse("content://com.google.android.providers.talk/contacts/blocked");
    public static final Uri CONTENT_URI_CHAT_CONTACTS;
    public static final Uri CONTENT_URI_CONTACTS_BAREBONE = Uri.parse("content://com.google.android.providers.talk/contacts_barebone");
    public static final Uri CONTENT_URI_CONTACT_ID = Uri.parse("content://com.google.android.providers.talk/contacts");
    
    static
    {
      CONTENT_URI_CHAT_CONTACTS = Uri.parse("content://com.google.android.providers.talk/contacts_chatting");
    }
  }
  
  public static final class Messages
    implements BaseColumns
  {
    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.providers.talk/messages");
    public static final Uri CONTENT_URI_BY_ACCOUNT;
    public static final Uri CONTENT_URI_MESSAGES_BY_ACCOUNT_AND_CONTACT;
    public static final Uri CONTENT_URI_MESSAGES_BY_THREAD_ID = Uri.parse("content://com.google.android.providers.talk/messagesByThreadId");
    public static final Uri OTR_MESSAGES_CONTENT_URI;
    public static final Uri OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT = Uri.parse("content://com.google.android.providers.talk/otrMessagesByAccount");
    public static final Uri OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT_AND_CONTACT;
    public static final Uri OTR_MESSAGES_CONTENT_URI_BY_THREAD_ID;
    
    static
    {
      CONTENT_URI_MESSAGES_BY_ACCOUNT_AND_CONTACT = Uri.parse("content://com.google.android.providers.talk/messagesByAcctAndContact");
      CONTENT_URI_BY_ACCOUNT = Uri.parse("content://com.google.android.providers.talk/messagesByAccount");
      OTR_MESSAGES_CONTENT_URI = Uri.parse("content://com.google.android.providers.talk/otrMessages");
      OTR_MESSAGES_CONTENT_URI_BY_THREAD_ID = Uri.parse("content://com.google.android.providers.talk/otrMessagesByThreadId");
      OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT_AND_CONTACT = Uri.parse("content://com.google.android.providers.talk/otrMessagesByAcctAndContact");
    }
    
    public static final Uri getContentUriByContact(long paramLong, String paramString)
    {
      Uri.Builder localBuilder = CONTENT_URI_MESSAGES_BY_ACCOUNT_AND_CONTACT.buildUpon();
      ContentUris.appendId(localBuilder, paramLong);
      localBuilder.appendPath(paramString);
      return localBuilder.build();
    }
    
    public static final Uri getContentUriByThreadId(long paramLong)
    {
      Uri.Builder localBuilder = CONTENT_URI_MESSAGES_BY_THREAD_ID.buildUpon();
      ContentUris.appendId(localBuilder, paramLong);
      return localBuilder.build();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gsf.TalkContract
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */