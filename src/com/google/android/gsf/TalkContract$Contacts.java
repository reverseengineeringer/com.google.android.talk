package com.google.android.gsf;

import android.net.Uri;
import android.provider.BaseColumns;

public final class TalkContract$Contacts
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

/* Location:
 * Qualified Name:     com.google.android.gsf.TalkContract.Contacts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */