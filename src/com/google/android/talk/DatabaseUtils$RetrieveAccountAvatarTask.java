package com.google.android.talk;

import android.content.ContentResolver;
import android.database.Cursor;
import android.os.AsyncTask;

public class DatabaseUtils$RetrieveAccountAvatarTask
  extends AsyncTask<TalkApp.AccountInfo, Void, DatabaseUtils.AvatarData>
{
  protected ContentResolver mContentResolver;
  protected Runnable mRunnable;
  
  public DatabaseUtils$RetrieveAccountAvatarTask(ContentResolver paramContentResolver, Runnable paramRunnable)
  {
    mContentResolver = paramContentResolver;
    mRunnable = paramRunnable;
  }
  
  protected DatabaseUtils.AvatarData doInBackground(TalkApp.AccountInfo... paramVarArgs)
  {
    paramVarArgs = DatabaseUtils.queryAvatarCursorForUser(mContentResolver, 0username, 0accountId);
    DatabaseUtils.AvatarData localAvatarData = new DatabaseUtils.AvatarData();
    if (paramVarArgs != null) {}
    try
    {
      if (paramVarArgs.moveToFirst())
      {
        mAvatarData = paramVarArgs.getBlob(1);
        mAvatarDataHash = paramVarArgs.getString(2);
      }
      return localAvatarData;
    }
    finally
    {
      if (paramVarArgs != null) {
        paramVarArgs.close();
      }
    }
  }
  
  protected void onPostExecute(DatabaseUtils.AvatarData paramAvatarData)
  {
    if (mRunnable != null) {
      mRunnable.run();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.DatabaseUtils.RetrieveAccountAvatarTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */