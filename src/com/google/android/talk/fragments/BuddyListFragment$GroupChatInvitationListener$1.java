package com.google.android.talk.fragments;

import com.google.android.gtalkservice.GroupChatInvitation;
import com.google.android.talk.TalkApp;
import java.util.HashMap;

class BuddyListFragment$GroupChatInvitationListener$1
  implements Runnable
{
  BuddyListFragment$GroupChatInvitationListener$1(BuddyListFragment.GroupChatInvitationListener paramGroupChatInvitationListener, GroupChatInvitation paramGroupChatInvitation) {}
  
  public void run()
  {
    if ((this$0.mFragment == null) || (this$0.mApp == null)) {
      return;
    }
    this$0.mApp.mGroupChatInvitations.put(val$invitation.getRoomAddress(), val$invitation);
    this$0.mFragment.forceLoad();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.GroupChatInvitationListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */