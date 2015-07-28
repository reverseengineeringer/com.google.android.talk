package com.google.android.talk;

import android.content.ContentResolver;
import java.util.HashMap;

class TalkApp$RetrieveSelfAccountAvatarTask
  extends DatabaseUtils.RetrieveAccountAvatarTask
{
  TalkApp.AccountInfo mAccountInfo;
  TalkApp.SelfAvatarReadyRunnable mOnLoaded;
  
  public TalkApp$RetrieveSelfAccountAvatarTask(TalkApp paramTalkApp, ContentResolver paramContentResolver, TalkApp.SelfAvatarReadyRunnable paramSelfAvatarReadyRunnable)
  {
    super(paramContentResolver, null);
    mOnLoaded = paramSelfAvatarReadyRunnable;
  }
  
  protected DatabaseUtils.AvatarData doInBackground(TalkApp.AccountInfo... paramVarArgs)
  {
    mAccountInfo = paramVarArgs[0];
    return super.doInBackground(paramVarArgs);
  }
  
  protected void onPostExecute(DatabaseUtils.AvatarData paramAvatarData)
  {
    synchronized (this$0)
    {
      TalkApp.access$800().put(mAccountInfo.username, paramAvatarData);
      super.onPostExecute(paramAvatarData);
      if (mOnLoaded != null) {
        mOnLoaded.run(paramAvatarData);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkApp.RetrieveSelfAccountAvatarTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */