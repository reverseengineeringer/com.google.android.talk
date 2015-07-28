package com.google.android.talk.fragments;

import android.os.AsyncTask;
import com.google.android.gsf.TalkContract.AccountSettings.QueryMap;
import com.google.android.talk.SettingsCache;
import com.google.android.talk.TalkApp.AccountInfo;

class SetStatusFragment$ReadSettingsTask
  extends AsyncTask<Void, Void, Boolean>
{
  private SetStatusFragment$ReadSettingsTask(SetStatusFragment paramSetStatusFragment) {}
  
  protected Boolean doInBackground(Void... paramVarArgs)
  {
    paramVarArgs = SettingsCache.getInstance().getSettingsMap(access$300this$0).accountId);
    SetStatusFragment.access$1002(this$0, paramVarArgs.getVideoChatEnabled());
    SetStatusFragment.access$1102(this$0, paramVarArgs.getAudioChatEnabled());
    return Boolean.valueOf(SetStatusFragment.access$1000(this$0));
  }
  
  protected void onPostExecute(Boolean paramBoolean)
  {
    SetStatusFragment.access$1202(this$0, SettingsCache.getInstance().getSettingsMap(access$300this$0).accountId));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.ReadSettingsTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */