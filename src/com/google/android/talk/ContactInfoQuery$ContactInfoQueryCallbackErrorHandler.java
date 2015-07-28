package com.google.android.talk;

import android.database.Cursor;

public abstract interface ContactInfoQuery$ContactInfoQueryCallbackErrorHandler
  extends ContactInfoQuery.ContactInfoQueryCallback
{
  public abstract void onContactInfoLoadFailed(String paramString, Cursor paramCursor);
}

/* Location:
 * Qualified Name:     com.google.android.talk.ContactInfoQuery.ContactInfoQueryCallbackErrorHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */