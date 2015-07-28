package com.google.android.talk.fragments;

import android.view.MenuItem;
import com.google.android.talk.IRosterListAdapter;

class BuddyListFragment$3
  implements Runnable
{
  boolean first = true;
  
  BuddyListFragment$3(BuddyListFragment paramBuddyListFragment) {}
  
  public void run()
  {
    BuddyListFragment.access$500(this$0, "onCreateLoader onFinishedLoading runnable");
    BuddyListFragment.BuddyListHost localBuddyListHost = (BuddyListFragment.BuddyListHost)this$0.getActivity();
    if (localBuddyListHost != null) {
      localBuddyListHost.finishedLoading();
    }
    if (first)
    {
      this$0.switchAccounts(this$0.mAccountInfo);
      first = false;
    }
    if (BuddyListFragment.access$700(this$0) != null)
    {
      if (this$0.mRosterListAdapter == null) {
        BuddyListFragment.access$700(this$0).setVisible(false);
      }
    }
    else {
      return;
    }
    BuddyListFragment.access$700(this$0).setVisible(this$0.mRosterListAdapter.hasActiveChats());
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */