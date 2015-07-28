package com.google.android.talk;

import android.database.AbstractCursor;
import android.database.Cursor;
import java.util.Arrays;

class EmailAddressAdapter$1
  extends AbstractCursor
{
  EmailAddressAdapter$1(EmailAddressAdapter paramEmailAddressAdapter, int paramInt, Cursor paramCursor) {}
  
  private void checkColumn(int paramInt)
  {
    if (paramInt >= val$columnCount) {
      throw new IllegalArgumentException("requesting column " + paramInt + "; cursor has " + val$columnCount);
    }
  }
  
  public String[] getColumnNames()
  {
    int i = val$columnCount;
    String[] arrayOfString = (String[])Arrays.copyOf(val$c.getColumnNames(), i + 1);
    arrayOfString[i] = "_id";
    return arrayOfString;
  }
  
  public int getCount()
  {
    return val$c.getCount();
  }
  
  public double getDouble(int paramInt)
  {
    checkColumn(paramInt);
    return val$c.getDouble(paramInt);
  }
  
  public float getFloat(int paramInt)
  {
    checkColumn(paramInt);
    return val$c.getFloat(paramInt);
  }
  
  public int getInt(int paramInt)
  {
    checkColumn(paramInt);
    return val$c.getInt(paramInt);
  }
  
  public long getLong(int paramInt)
  {
    if (paramInt == val$columnCount) {
      return getPosition();
    }
    return val$c.getLong(paramInt);
  }
  
  public short getShort(int paramInt)
  {
    checkColumn(paramInt);
    return val$c.getShort(paramInt);
  }
  
  public String getString(int paramInt)
  {
    checkColumn(paramInt);
    return val$c.getString(paramInt);
  }
  
  public boolean isNull(int paramInt)
  {
    checkColumn(paramInt);
    return val$c.isNull(paramInt);
  }
  
  public boolean onMove(int paramInt1, int paramInt2)
  {
    boolean bool = super.onMove(paramInt1, paramInt2);
    if (bool) {
      val$c.moveToPosition(paramInt2);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.EmailAddressAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */