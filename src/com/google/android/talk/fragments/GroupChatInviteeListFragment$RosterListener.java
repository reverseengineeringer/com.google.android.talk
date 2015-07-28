package com.google.android.talk.fragments;

import com.google.android.gtalkservice.IRosterListener.Stub;
import com.google.android.talk.TalkApp;

class GroupChatInviteeListFragment$RosterListener
  extends IRosterListener.Stub
{
  GroupChatInviteeListFragment$RosterListener(GroupChatInviteeListFragment paramGroupChatInviteeListFragment) {}
  
  public void presenceChanged(String paramString)
  {
    if (TalkApp.verboseLoggable()) {
      GroupChatInviteeListFragment.access$000(this$0, "RosterListener.presenceChanged for " + paramString);
    }
    this$0.forceLoad();
  }
  
  public void rosterChanged()
  {
    this$0.forceLoad();
  }
  
  public void selfPresenceChanged() {}
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.GroupChatInviteeListFragment.RosterListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */