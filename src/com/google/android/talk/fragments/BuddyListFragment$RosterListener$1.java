package com.google.android.talk.fragments;

class BuddyListFragment$RosterListener$1
  implements Runnable
{
  BuddyListFragment$RosterListener$1(BuddyListFragment.RosterListener paramRosterListener) {}
  
  public void run()
  {
    if (this$0.mFragment == null) {}
    while (this$0.mFragment.getActivity() == null) {
      return;
    }
    this$0.mFragment.forceLoad();
    this$0.mFragment.mController.onDisplayProgress(false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.RosterListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */