package com.google.android.talk.fragments;

class BuddyListFragment$RosterListener$2
  implements Runnable
{
  BuddyListFragment$RosterListener$2(BuddyListFragment.RosterListener paramRosterListener) {}
  
  public void run()
  {
    if (this$0.mFragment == null) {
      return;
    }
    this$0.mFragment.forceLoad();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.RosterListener.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */