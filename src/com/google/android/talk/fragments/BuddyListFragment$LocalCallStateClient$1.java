package com.google.android.talk.fragments;

import com.google.android.talk.IRosterListAdapter;
import com.google.android.talk.RosterListAdapter.CallState;

class BuddyListFragment$LocalCallStateClient$1
  implements Runnable
{
  BuddyListFragment$LocalCallStateClient$1(BuddyListFragment.LocalCallStateClient paramLocalCallStateClient) {}
  
  public void run()
  {
    BuddyListFragment.access$802(this$1.this$0, null);
    RosterListAdapter.CallState localCallState = new RosterListAdapter.CallState();
    this$1.this$0.mRosterListAdapter.setActiveCallState(localCallState);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.LocalCallStateClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */