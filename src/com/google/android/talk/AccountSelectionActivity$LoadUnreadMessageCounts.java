package com.google.android.talk;

import android.content.ContentResolver;
import android.database.Cursor;
import android.os.AsyncTask;
import com.google.android.gsf.TalkContract.AccountStatus;
import java.util.List;

class AccountSelectionActivity$LoadUnreadMessageCounts
  extends AsyncTask<ContentResolver, Void, Void>
{
  private List<TalkApp.AccountInfo> mAccountList;
  
  public AccountSelectionActivity$LoadUnreadMessageCounts(List<TalkApp.AccountInfo> paramList)
  {
    List localList;
    mAccountList = localList;
  }
  
  protected Void doInBackground(ContentResolver... arg1)
  {
    int j;
    int i;
    synchronized (mAccountList)
    {
      j = mAccountList.size();
      i = 0;
      while (i < j)
      {
        mAccountList.get(i)).unreadCount = 0;
        i += 1;
      }
      ??? = this$0.getContentResolver().query(TalkContract.AccountStatus.CONTENT_URI_UNREAD_CHATS, null, null, null, null);
      if (??? == null) {
        return null;
      }
    }
    for (;;)
    {
      try
      {
        synchronized (mAccountList)
        {
          if (!???.moveToNext()) {
            break;
          }
          long l = ???.getLong(0);
          j = ???.getInt(1);
          int k = mAccountList.size();
          i = 0;
          if (i >= k) {
            continue;
          }
          TalkApp.AccountInfo localAccountInfo = (TalkApp.AccountInfo)mAccountList.get(i);
          if (accountId == l) {
            unreadCount = j;
          }
        }
        i += 1;
      }
      finally
      {
        ???.close();
      }
    }
    ???.close();
    return null;
  }
  
  protected void onPostExecute(Void paramVoid)
  {
    ((AccountListAdapter)this$0.getListAdapter()).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountSelectionActivity.LoadUnreadMessageCounts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */