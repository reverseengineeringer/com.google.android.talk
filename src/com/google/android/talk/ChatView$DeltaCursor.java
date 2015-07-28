package com.google.android.talk;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.CursorIndexOutOfBoundsException;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;

class ChatView$DeltaCursor
  implements Cursor
{
  private String[] mColumnNames;
  private Cursor mCursor;
  private int mDateColumn = -1;
  private int mDeltaColumn = -1;
  
  ChatView$DeltaCursor(ChatView paramChatView, Cursor paramCursor)
  {
    mCursor = paramCursor;
    paramChatView = paramCursor.getColumnNames();
    int j = paramChatView.length;
    mColumnNames = new String[j + 1];
    int i = 0;
    while (i < j)
    {
      mColumnNames[i] = paramChatView[i];
      if (mColumnNames[i].equals("date")) {
        mDateColumn = i;
      }
      i += 1;
    }
    mDeltaColumn = j;
    mColumnNames[mDeltaColumn] = "delta";
  }
  
  private void checkPosition()
  {
    int i = mCursor.getPosition();
    int j = mCursor.getCount();
    if ((-1 == i) || (j == i)) {
      throw new CursorIndexOutOfBoundsException(i, j);
    }
  }
  
  private long getDeltaValue()
  {
    int i = mCursor.getPosition();
    long l1;
    long l2;
    if (i == getCount() - 1)
    {
      l1 = mCursor.getLong(mDateColumn);
      l2 = System.currentTimeMillis();
    }
    for (;;)
    {
      return l2 - l1;
      mCursor.moveToPosition(i + 1);
      l2 = mCursor.getLong(mDateColumn);
      mCursor.moveToPosition(i);
      l1 = mCursor.getLong(mDateColumn);
    }
  }
  
  public void close()
  {
    mCursor.close();
  }
  
  public void copyStringToBuffer(int paramInt, CharArrayBuffer paramCharArrayBuffer)
  {
    checkPosition();
    if (paramInt == mDeltaColumn)
    {
      String str = Long.toString(getDeltaValue());
      paramInt = str.length();
      char[] arrayOfChar = data;
      if ((arrayOfChar == null) || (arrayOfChar.length < paramInt)) {
        data = str.toCharArray();
      }
      for (;;)
      {
        sizeCopied = str.length();
        return;
        str.getChars(0, paramInt, arrayOfChar, 0);
      }
    }
    mCursor.copyStringToBuffer(paramInt, paramCharArrayBuffer);
  }
  
  public void deactivate()
  {
    mCursor.deactivate();
  }
  
  public byte[] getBlob(int paramInt)
  {
    checkPosition();
    if (paramInt == mDeltaColumn) {
      return null;
    }
    return mCursor.getBlob(paramInt);
  }
  
  public int getColumnCount()
  {
    return mCursor.getColumnCount() + 1;
  }
  
  public int getColumnIndex(String paramString)
  {
    if ("delta".equals(paramString)) {
      return mDeltaColumn;
    }
    return mCursor.getColumnIndexOrThrow(paramString);
  }
  
  public int getColumnIndexOrThrow(String paramString)
    throws IllegalArgumentException
  {
    if ("delta".equals(paramString)) {
      return mDeltaColumn;
    }
    return mCursor.getColumnIndexOrThrow(paramString);
  }
  
  public String getColumnName(int paramInt)
  {
    if (paramInt == mDeltaColumn) {
      return "delta";
    }
    return mCursor.getColumnName(paramInt);
  }
  
  public String[] getColumnNames()
  {
    return mColumnNames;
  }
  
  public int getCount()
  {
    return mCursor.getCount();
  }
  
  public double getDouble(int paramInt)
  {
    checkPosition();
    if (paramInt == mDeltaColumn) {
      return getDeltaValue();
    }
    return mCursor.getDouble(paramInt);
  }
  
  public Bundle getExtras()
  {
    return mCursor.getExtras();
  }
  
  public float getFloat(int paramInt)
  {
    checkPosition();
    if (paramInt == mDeltaColumn) {
      return (float)getDeltaValue();
    }
    return mCursor.getFloat(paramInt);
  }
  
  public int getInt(int paramInt)
  {
    checkPosition();
    if (paramInt == mDeltaColumn) {
      return (int)getDeltaValue();
    }
    return mCursor.getInt(paramInt);
  }
  
  public long getLong(int paramInt)
  {
    checkPosition();
    if (paramInt == mDeltaColumn) {
      return getDeltaValue();
    }
    return mCursor.getLong(paramInt);
  }
  
  public int getPosition()
  {
    return mCursor.getPosition();
  }
  
  public short getShort(int paramInt)
  {
    checkPosition();
    if (paramInt == mDeltaColumn) {
      return (short)(int)getDeltaValue();
    }
    return mCursor.getShort(paramInt);
  }
  
  public String getString(int paramInt)
  {
    checkPosition();
    if (paramInt == mDeltaColumn) {
      return Long.toString(getDeltaValue());
    }
    return mCursor.getString(paramInt);
  }
  
  public int getType(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean getWantsAllOnMoveCalls()
  {
    return mCursor.getWantsAllOnMoveCalls();
  }
  
  public boolean isAfterLast()
  {
    return mCursor.isAfterLast();
  }
  
  public boolean isBeforeFirst()
  {
    return mCursor.isBeforeFirst();
  }
  
  public boolean isClosed()
  {
    return mCursor.isClosed();
  }
  
  public boolean isFirst()
  {
    return mCursor.isFirst();
  }
  
  public boolean isLast()
  {
    return mCursor.isLast();
  }
  
  public boolean isNull(int paramInt)
  {
    checkPosition();
    if (paramInt == mDeltaColumn) {
      return false;
    }
    return mCursor.isNull(paramInt);
  }
  
  public boolean move(int paramInt)
  {
    return mCursor.move(paramInt);
  }
  
  public boolean moveToFirst()
  {
    return mCursor.moveToFirst();
  }
  
  public boolean moveToLast()
  {
    return mCursor.moveToLast();
  }
  
  public boolean moveToNext()
  {
    return mCursor.moveToNext();
  }
  
  public boolean moveToPosition(int paramInt)
  {
    return mCursor.moveToPosition(paramInt);
  }
  
  public boolean moveToPrevious()
  {
    return mCursor.moveToPrevious();
  }
  
  public void registerContentObserver(ContentObserver paramContentObserver)
  {
    mCursor.registerContentObserver(paramContentObserver);
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    mCursor.registerDataSetObserver(paramDataSetObserver);
  }
  
  public boolean requery()
  {
    return mCursor.requery();
  }
  
  public Bundle respond(Bundle paramBundle)
  {
    return mCursor.respond(paramBundle);
  }
  
  public void setNotificationUri(ContentResolver paramContentResolver, Uri paramUri)
  {
    mCursor.setNotificationUri(paramContentResolver, paramUri);
  }
  
  public void unregisterContentObserver(ContentObserver paramContentObserver)
  {
    mCursor.unregisterContentObserver(paramContentObserver);
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    mCursor.unregisterDataSetObserver(paramDataSetObserver);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.DeltaCursor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */