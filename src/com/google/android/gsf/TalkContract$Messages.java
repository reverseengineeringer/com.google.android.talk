package com.google.android.gsf;

import android.content.ContentUris;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.BaseColumns;

public final class TalkContract$Messages
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

/* Location:
 * Qualified Name:     com.google.android.gsf.TalkContract.Messages
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */