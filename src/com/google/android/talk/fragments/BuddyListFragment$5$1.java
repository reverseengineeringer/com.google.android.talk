package com.google.android.talk.fragments;

import android.app.Activity;
import com.google.android.talk.RosterListItem;
import com.google.android.talk.TalkApp.AccountInfo;
import com.google.android.talk.videochat.VideoChatActivity;
import com.google.android.talk.videochat.WifiPolicyUtils;

class BuddyListFragment$5$1
  implements Runnable
{
  BuddyListFragment$5$1(BuddyListFragment.5 param5, RosterListItem paramRosterListItem) {}
  
  public void run()
  {
    Activity localActivity = this$1.this$0.getActivity();
    if (localActivity == null) {}
    while ((WifiPolicyUtils.wifiRequiredForVideoChat(localActivity.getContentResolver())) && (WifiPolicyUtils.showAlertIfNoWifi(localActivity, true))) {
      return;
    }
    VideoChatActivity.startActivityToInitiate(localActivity, this$1.this$0.mAccountInfo.accountId, val$item.getContact());
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.5.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */