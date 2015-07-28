package com.google.android.talk.fragments;

import android.app.Activity;
import com.google.android.gtalkservice.GroupChatInvitation;
import com.google.android.gtalkservice.IGroupChatInvitationListener.Stub;
import com.google.android.talk.TalkApp;
import java.util.HashMap;

public class BuddyListFragment$GroupChatInvitationListener
  extends IGroupChatInvitationListener.Stub
{
  TalkApp mApp;
  BuddyListFragment mFragment;
  
  public BuddyListFragment$GroupChatInvitationListener(BuddyListFragment paramBuddyListFragment, TalkApp paramTalkApp)
  {
    mFragment = paramBuddyListFragment;
    mApp = paramTalkApp;
  }
  
  public void clearRefs()
  {
    mApp = null;
    mFragment = null;
  }
  
  public boolean onInvitationReceived(final GroupChatInvitation paramGroupChatInvitation)
  {
    BuddyListFragment localBuddyListFragment = mFragment;
    TalkApp localTalkApp = mApp;
    if ((localBuddyListFragment == null) || (mApp == null)) {
      return false;
    }
    if (TalkApp.debugLoggable()) {
      BuddyListFragment.access$200(localBuddyListFragment, "received MUC invitation from " + paramGroupChatInvitation.getInviter() + ", room=" + paramGroupChatInvitation.getRoomAddress());
    }
    localBuddyListFragment.getActivity().runOnUiThread(new Runnable()
    {
      public void run()
      {
        if ((mFragment == null) || (mApp == null)) {
          return;
        }
        mApp.mGroupChatInvitations.put(paramGroupChatInvitation.getRoomAddress(), paramGroupChatInvitation);
        mFragment.forceLoad();
      }
    });
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.GroupChatInvitationListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */