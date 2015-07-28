package com.google.android.talk;

import android.content.ContentResolver;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import java.util.HashMap;

class AccountListAdapter$RetrieveAccountAvatarTask
  extends DatabaseUtils.RetrieveAccountAvatarTask
{
  private TalkApp.AccountInfo mAccountInfo;
  
  public AccountListAdapter$RetrieveAccountAvatarTask(AccountListAdapter paramAccountListAdapter, ContentResolver paramContentResolver, TalkApp.AccountInfo paramAccountInfo, Runnable paramRunnable)
  {
    super(paramContentResolver, paramRunnable);
    mAccountInfo = paramAccountInfo;
  }
  
  protected void onPostExecute(DatabaseUtils.AvatarData paramAvatarData)
  {
    super.onPostExecute(paramAvatarData);
    if (mAvatarData != null)
    {
      paramAvatarData = new BitmapDrawable(BitmapFactory.decodeByteArray(mAvatarData, 0, mAvatarData.length));
      AccountListAdapter.access$400(this$0).put(mAccountInfo.username, paramAvatarData);
      this$0.notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountListAdapter.RetrieveAccountAvatarTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */