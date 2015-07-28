package com.google.android.talk.fragments;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Handler;
import com.google.android.talk.ActivityUtils;
import com.google.android.talk.IRosterListAdapter;
import com.google.android.talk.IRosterListAdapter.VideoButtonClickHandler;
import com.google.android.talk.RosterListAdapter.CallState;
import com.google.android.talk.RosterListItem;
import com.google.android.talk.TalkApp.AccountInfo;
import com.google.android.talk.videochat.VideoChatActivity;
import com.google.android.talk.videochat.WifiPolicyUtils;

class BuddyListFragment$5
  implements IRosterListAdapter.VideoButtonClickHandler
{
  BuddyListFragment$5(BuddyListFragment paramBuddyListFragment) {}
  
  public void onVideoButtonClicked(final RosterListItem paramRosterListItem)
  {
    int i = paramRosterListItem.getCapabilities();
    if (paramRosterListItem.getPresence() != 0)
    {
      if (!ActivityUtils.isVideoChatCapable(i)) {
        break label128;
      }
      localCallState = this$0.mRosterListAdapter.getActiveCallState();
      if ((localCallState == null) || (!localCallState.appliesToContact(paramRosterListItem.getContact()))) {
        break label72;
      }
      VideoChatActivity.startActivityCallInProgress(this$0.getActivity(), this$0.mAccountInfo.accountId, paramRosterListItem.getContact());
    }
    label72:
    label128:
    while (!ActivityUtils.isAudioChatCapable(i))
    {
      RosterListAdapter.CallState localCallState;
      return;
      if (this$0.mController.onVideoChatStarted()) {}
      for (i = this$0.getResources().getInteger(2131361792);; i = 0)
      {
        this$0.mHandler.postDelayed(new Runnable()
        {
          public void run()
          {
            Activity localActivity = this$0.getActivity();
            if (localActivity == null) {}
            while ((WifiPolicyUtils.wifiRequiredForVideoChat(localActivity.getContentResolver())) && (WifiPolicyUtils.showAlertIfNoWifi(localActivity, true))) {
              return;
            }
            VideoChatActivity.startActivityToInitiate(localActivity, this$0.mAccountInfo.accountId, paramRosterListItem.getContact());
          }
        }, i);
        return;
      }
    }
    paramRosterListItem = new BuddyListFragment.ListItemInfo(paramRosterListItem.getContact(), this$0.mAccountInfo.accountId, true);
    this$0.mController.onOpenChat(paramRosterListItem);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */