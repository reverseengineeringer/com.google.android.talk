package com.google.android.talk;

import android.content.ContentResolver;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.text.TextUtils;
import android.text.util.Rfc822Token;
import android.view.View;
import android.widget.ResourceCursorAdapter;
import android.widget.TextView;
import java.util.Arrays;

public class EmailAddressAdapter
  extends ResourceCursorAdapter
{
  private static final String[] PROJECTION = { "display_name", "data1" };
  private ContentResolver mContentResolver;
  
  public EmailAddressAdapter(Context paramContext)
  {
    super(paramContext, 2130968584, null);
    mContentResolver = paramContext.getContentResolver();
  }
  
  private final String makeDisplayString(Cursor paramCursor)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    String str = paramCursor.getString(0);
    paramCursor = paramCursor.getString(1);
    if (!TextUtils.isEmpty(str))
    {
      localStringBuilder.append(str);
      i = 1;
    }
    if (i != 0) {
      localStringBuilder.append(" <");
    }
    localStringBuilder.append(paramCursor);
    if (i != 0) {
      localStringBuilder.append(">");
    }
    return localStringBuilder.toString();
  }
  
  public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    ((TextView)paramView).setText(makeDisplayString(paramCursor));
  }
  
  public final String convertToString(Cursor paramCursor)
  {
    return new Rfc822Token(paramCursor.getString(0), paramCursor.getString(1), null).toString();
  }
  
  public Cursor runQueryOnBackgroundThread(final CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {}
    for (paramCharSequence = "";; paramCharSequence = paramCharSequence.toString())
    {
      paramCharSequence = Uri.withAppendedPath(ContactsContract.CommonDataKinds.Email.CONTENT_FILTER_URI, Uri.encode(paramCharSequence));
      paramCharSequence = mContentResolver.query(paramCharSequence, PROJECTION, null, null, "times_contacted DESC, display_name");
      if (paramCharSequence != null) {
        break;
      }
      return null;
    }
    new AbstractCursor()
    {
      private void checkColumn(int paramAnonymousInt)
      {
        if (paramAnonymousInt >= val$columnCount) {
          throw new IllegalArgumentException("requesting column " + paramAnonymousInt + "; cursor has " + val$columnCount);
        }
      }
      
      public String[] getColumnNames()
      {
        int i = val$columnCount;
        String[] arrayOfString = (String[])Arrays.copyOf(paramCharSequence.getColumnNames(), i + 1);
        arrayOfString[i] = "_id";
        return arrayOfString;
      }
      
      public int getCount()
      {
        return paramCharSequence.getCount();
      }
      
      public double getDouble(int paramAnonymousInt)
      {
        checkColumn(paramAnonymousInt);
        return paramCharSequence.getDouble(paramAnonymousInt);
      }
      
      public float getFloat(int paramAnonymousInt)
      {
        checkColumn(paramAnonymousInt);
        return paramCharSequence.getFloat(paramAnonymousInt);
      }
      
      public int getInt(int paramAnonymousInt)
      {
        checkColumn(paramAnonymousInt);
        return paramCharSequence.getInt(paramAnonymousInt);
      }
      
      public long getLong(int paramAnonymousInt)
      {
        if (paramAnonymousInt == val$columnCount) {
          return getPosition();
        }
        return paramCharSequence.getLong(paramAnonymousInt);
      }
      
      public short getShort(int paramAnonymousInt)
      {
        checkColumn(paramAnonymousInt);
        return paramCharSequence.getShort(paramAnonymousInt);
      }
      
      public String getString(int paramAnonymousInt)
      {
        checkColumn(paramAnonymousInt);
        return paramCharSequence.getString(paramAnonymousInt);
      }
      
      public boolean isNull(int paramAnonymousInt)
      {
        checkColumn(paramAnonymousInt);
        return paramCharSequence.isNull(paramAnonymousInt);
      }
      
      public boolean onMove(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        boolean bool = super.onMove(paramAnonymousInt1, paramAnonymousInt2);
        if (bool) {
          paramCharSequence.moveToPosition(paramAnonymousInt2);
        }
        return bool;
      }
    };
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.EmailAddressAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */