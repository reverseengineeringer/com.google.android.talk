package com.google.android.talk;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Bundle;
import android.text.TextUtils;

public final class GmailProviderWrapper$MessageCursor
  extends GmailProviderWrapper.MailCursor
{
  private int mBodyEmbedsExternalResourcesIndex;
  private int mBodyIndex;
  private int mCcIndex;
  private int mConversationIdIndex;
  private int mDateReceivedMsIndex;
  private int mFromIndex;
  private int mIdIndex;
  long mInReplyToLocalMessageId;
  private int mLabelIdsIndex;
  boolean mPreserveAttachments;
  private int mSnippetIndex;
  private int mSubjectIndex;
  private int mToIndex;
  
  static
  {
    if (!GmailProviderWrapper.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private GmailProviderWrapper$MessageCursor(String paramString, Cursor paramCursor)
  {
    super(paramString, paramCursor);
    if (paramCursor == null) {
      throw new IllegalArgumentException("null cursor passed to MessageCursor()");
    }
    mIdIndex = mCursor.getColumnIndexOrThrow("_id");
    mConversationIdIndex = mCursor.getColumnIndexOrThrow("conversation");
    mSubjectIndex = mCursor.getColumnIndexOrThrow("subject");
    mSnippetIndex = mCursor.getColumnIndexOrThrow("snippet");
    mFromIndex = mCursor.getColumnIndexOrThrow("fromAddress");
    mToIndex = mCursor.getColumnIndexOrThrow("toAddresses");
    mCcIndex = mCursor.getColumnIndexOrThrow("ccAddresses");
    mDateReceivedMsIndex = mCursor.getColumnIndexOrThrow("dateReceivedMs");
    mBodyIndex = mCursor.getColumnIndexOrThrow("body");
    mBodyEmbedsExternalResourcesIndex = mCursor.getColumnIndexOrThrow("bodyEmbedsExternalResources");
    mLabelIdsIndex = mCursor.getColumnIndexOrThrow("labelIds");
    mInReplyToLocalMessageId = 0L;
    mPreserveAttachments = false;
  }
  
  public String[] getAddresses(String paramString, int paramInt)
  {
    if (getUpdateValues().containsKey(paramString)) {}
    for (paramString = (String)getUpdateValues().get(paramString);; paramString = getStringInColumn(paramInt)) {
      return TextUtils.split(paramString, GmailProviderWrapper.access$300());
    }
  }
  
  public String getBody()
  {
    return getStringInColumn(mBodyIndex);
  }
  
  public boolean getBodyEmbedsExternalResources()
  {
    checkCursor();
    return mCursor.getInt(mBodyEmbedsExternalResourcesIndex) != 0;
  }
  
  public String[] getCcAddresses()
  {
    return getAddresses("ccAddresses", mCcIndex);
  }
  
  public long getDateReceivedMs()
  {
    checkCursor();
    return mCursor.getLong(mDateReceivedMsIndex);
  }
  
  public String getFromAddress()
  {
    return getStringInColumn(mFromIndex);
  }
  
  public long getMessageId()
  {
    checkCursor();
    return mCursor.getLong(mIdIndex);
  }
  
  public String getRawLabelIds()
  {
    return mCursor.getString(mLabelIdsIndex);
  }
  
  public String getSnippet()
  {
    return getStringInColumn(mSnippetIndex);
  }
  
  public GmailProviderWrapper.CursorStatus getStatus()
  {
    return GmailProviderWrapper.CursorStatus.valueOf(mCursor.getExtras().getString("status"));
  }
  
  public String[] getToAddresses()
  {
    return getAddresses("toAddresses", mToIndex);
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
 * Qualified Name:     com.google.android.talk.GmailProviderWrapper.MessageCursor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */