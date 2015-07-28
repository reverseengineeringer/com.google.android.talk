package com.google.android.talk;

import android.database.Cursor;
import android.os.Bundle;

public final class GmailProviderWrapper$ConversationCursor
  extends GmailProviderWrapper.MailCursor
{
  private int mConversationIdIndex;
  private int mDateIndex;
  private int mPersonalLevelIndex;
  private int mSnippetIndex;
  private int mSubjectIndex;
  
  static
  {
    if (!GmailProviderWrapper.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private GmailProviderWrapper$ConversationCursor(String paramString, Cursor paramCursor)
  {
    super(paramString, paramCursor);
    if (paramCursor == null) {
      throw new IllegalArgumentException("null cursor passed to ConversationCursor()");
    }
    mConversationIdIndex = mCursor.getColumnIndexOrThrow("_id");
    mSubjectIndex = mCursor.getColumnIndexOrThrow("subject");
    mSnippetIndex = mCursor.getColumnIndexOrThrow("snippet");
    mDateIndex = mCursor.getColumnIndexOrThrow("date");
    mPersonalLevelIndex = mCursor.getColumnIndexOrThrow("personalLevel");
  }
  
  public void becomeActiveNetworkCursor()
  {
    Object localObject = new Bundle();
    ((Bundle)localObject).putString("command", "activate");
    localObject = mCursor.respond((Bundle)localObject).getString("commandResponse");
    assert ("ok".equals(localObject));
  }
  
  public long getConversationId()
  {
    return mCursor.getLong(mConversationIdIndex);
  }
  
  public long getDateMs()
  {
    return mCursor.getLong(mDateIndex);
  }
  
  public GmailProviderWrapper.PersonalLevel getPersonalLevel()
  {
    return GmailProviderWrapper.PersonalLevel.access$400(mCursor.getInt(mPersonalLevelIndex));
  }
  
  public String getSnippet()
  {
    return getStringInColumn(mSnippetIndex);
  }
  
  public GmailProviderWrapper.CursorStatus getStatus()
  {
    return GmailProviderWrapper.CursorStatus.valueOf(mCursor.getExtras().getString("status"));
  }
  
  public String getSubject()
  {
    return getStringInColumn(mSubjectIndex);
  }
  
  public void retry()
  {
    Object localObject = new Bundle();
    ((Bundle)localObject).putString("command", "retry");
    localObject = mCursor.respond((Bundle)localObject).getString("commandResponse");
    assert ("ok".equals(localObject));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.GmailProviderWrapper.ConversationCursor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */