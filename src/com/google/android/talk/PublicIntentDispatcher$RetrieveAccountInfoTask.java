package com.google.android.talk;

import android.content.ContentResolver;
import android.os.AsyncTask;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class PublicIntentDispatcher$RetrieveAccountInfoTask
  extends AsyncTask<String, Void, List<PublicIntentDispatcher.FromAccountInfo>>
{
  private ContentResolver mCr;
  
  public PublicIntentDispatcher$RetrieveAccountInfoTask(PublicIntentDispatcher paramPublicIntentDispatcher, ContentResolver paramContentResolver)
  {
    mCr = paramContentResolver;
  }
  
  protected List<PublicIntentDispatcher.FromAccountInfo> doInBackground(String... paramVarArgs)
  {
    paramVarArgs = paramVarArgs[0];
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = DatabaseUtils.getAllAccountInfos(mCr).iterator();
    while (localIterator.hasNext())
    {
      TalkApp.AccountInfo localAccountInfo = (TalkApp.AccountInfo)localIterator.next();
      localArrayList.add(new PublicIntentDispatcher.FromAccountInfo(localAccountInfo, DatabaseUtils.IsUserInRosterList(mCr, paramVarArgs, accountId)));
    }
    return localArrayList;
  }
  
  protected void onPostExecute(List<PublicIntentDispatcher.FromAccountInfo> paramList)
  {
    PublicIntentDispatcher.access$100(this$0, paramList);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.PublicIntentDispatcher.RetrieveAccountInfoTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */