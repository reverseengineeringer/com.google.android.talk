package com.google.android.talk;

import android.content.AsyncQueryHandler;
import android.content.Context;
import android.database.Cursor;
import android.util.Log;

final class BuddyInfo$QueryHandler
  extends AsyncQueryHandler
{
  public BuddyInfo$QueryHandler(BuddyInfo paramBuddyInfo, Context paramContext)
  {
    super(paramContext.getContentResolver());
  }
  
  protected void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    try
    {
      if (!paramCursor.moveToFirst())
      {
        Log.e("talk", "[BuddyInfo] QueryHandler: empty cursor, bail!");
        this$0.finish();
        return;
      }
      boolean bool = this$0.isFinishing();
      if (bool) {
        return;
      }
      BuddyInfo.access$100(this$0, paramCursor);
      BuddyInfo.access$202(this$0, true);
      return;
    }
    finally
    {
      paramCursor.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyInfo.QueryHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */