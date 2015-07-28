package com.google.android.talk.fragments;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.talk.TalkApp;
import com.google.android.talk.TalkApp.AccountInfo;

class BuddyListFragment$2
  extends BroadcastReceiver
{
  BuddyListFragment$2(BuddyListFragment paramBuddyListFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    String str;
    long l;
    if ("android.intent.action.GTALK_AVATAR_CHANGED".equals(paramContext))
    {
      str = paramIntent.getStringExtra("from");
      l = paramIntent.getLongExtra("accountId", 0L);
      if (BuddyListFragment.access$100(this$0)) {
        break label41;
      }
    }
    label41:
    while ((str == null) || (!str.equals(this$0.getAccountInfo().username)) || (l != this$0.getAccountInfo().accountId)) {
      return;
    }
    BuddyListFragment.access$200(this$0, "received intent " + paramContext + ", update own avatar");
    TalkApp.getApplication(this$0.getActivity()).clearSelfAvatarCache();
    BuddyListFragment.access$300(this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */