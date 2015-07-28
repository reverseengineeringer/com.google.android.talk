package com.google.android.talk.loaders;

import android.content.Context;
import android.util.Log;

public class GroupChatInviteeListLoader
  extends RosterListLoader
{
  public GroupChatInviteeListLoader(Context paramContext, String[] paramArrayOfString, long paramLong)
  {
    super(paramContext);
    setSelection(paramArrayOfString, paramLong);
  }
  
  private void log(String paramString)
  {
    Log.d("talk", "[GroupChatInviteeListLoader] " + paramString);
  }
  
  private void setSelection(String[] paramArrayOfString, long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(String.format("account=%s AND mode>0 AND type!=2 AND type!=3 AND (subscriptionType=2 OR subscriptionType=4)", new Object[] { Long.valueOf(paramLong) }));
    int j = paramArrayOfString.length;
    String[] arrayOfString = new String[j];
    int i = 0;
    while (i < j)
    {
      localStringBuilder.append(" AND ").append("username").append("!=?");
      arrayOfString[i] = paramArrayOfString[i];
      i += 1;
    }
    if (mLogLevel == 2)
    {
      log("prepareQueryParameters: " + localStringBuilder.toString());
      log("mSelectionArgs: (length " + arrayOfString.length + ")");
      i = 0;
      while (i < arrayOfString.length)
      {
        log("    " + arrayOfString[i]);
        i += 1;
      }
    }
    setSelection(localStringBuilder.toString());
    setSelectionArgs(arrayOfString);
  }
  
  protected void prepareSelectionClause() {}
}

/* Location:
 * Qualified Name:     com.google.android.talk.loaders.GroupChatInviteeListLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */