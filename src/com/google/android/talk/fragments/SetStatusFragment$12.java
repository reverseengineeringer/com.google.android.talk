package com.google.android.talk.fragments;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.talk.TalkApp;

class SetStatusFragment$12
  extends BroadcastReceiver
{
  SetStatusFragment$12(SetStatusFragment paramSetStatusFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.GTALK_AVATAR_CHANGED".equals(paramIntent.getAction()))
    {
      TalkApp.getApplication(this$0.getActivity()).clearSelfAvatarCache();
      SetStatusFragment.access$500(this$0);
      SetStatusFragment.access$800(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */