package com.google.android.talk;

import android.content.ContentValues;
import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Handler;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

class GmailProviderWrapper$MailCursor
  extends ContentObserver
{
  protected final String mAccount;
  protected final Cursor mCursor;
  private final Set<GmailProviderWrapper.MailCursorObserver> mObservers = new HashSet();
  private ContentValues mUpdateValues;
  
  protected GmailProviderWrapper$MailCursor(String paramString, Cursor paramCursor)
  {
    super(new Handler());
    mCursor = paramCursor;
    mAccount = paramString;
    if (mCursor != null) {
      mCursor.registerContentObserver(this);
    }
  }
  
  protected void checkCursor()
  {
    if (mCursor == null) {
      throw new IllegalStateException("cannot read from an insertion cursor");
    }
  }
  
  protected void checkThread() {}
  
  public final int count()
  {
    if (mCursor != null) {
      return mCursor.getCount();
    }
    return 0;
  }
  
  public final boolean deliverSelfNotifications()
  {
    return false;
  }
  
  public String getAccount()
  {
    return mAccount;
  }
  
  public Cursor getCursor()
  {
    return mCursor;
  }
  
  protected String getStringInColumn(int paramInt)
  {
    checkCursor();
    return GmailProviderWrapper.access$200(mCursor.getString(paramInt));
  }
  
  protected ContentValues getUpdateValues()
  {
    if (mUpdateValues == null) {
      mUpdateValues = new ContentValues();
    }
    return mUpdateValues;
  }
  
  public final boolean moveTo(int paramInt)
  {
    checkCursor();
    checkThread();
    boolean bool = mCursor.moveToPosition(paramInt);
    if (bool) {
      onCursorPositionChanged();
    }
    return bool;
  }
  
  public final boolean next()
  {
    checkCursor();
    checkThread();
    boolean bool = mCursor.moveToNext();
    if (bool) {
      onCursorPositionChanged();
    }
    return bool;
  }
  
  public void onChange(boolean paramBoolean)
  {
    Iterator localIterator = mObservers.iterator();
    while (localIterator.hasNext()) {
      ((GmailProviderWrapper.MailCursorObserver)localIterator.next()).onCursorChanged(this);
    }
  }
  
  protected void onCursorPositionChanged()
  {
    mUpdateValues = null;
  }
  
  public final int position()
  {
    if (mCursor != null) {
      return mCursor.getPosition();
    }
    return -1;
  }
  
  public final void registerContentObserver(ContentObserver paramContentObserver)
  {
    mCursor.registerContentObserver(paramContentObserver);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.GmailProviderWrapper.MailCursor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */