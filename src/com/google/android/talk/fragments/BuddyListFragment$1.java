package com.google.android.talk.fragments;

import android.app.Activity;

class BuddyListFragment$1
  implements Runnable
{
  BuddyListFragment$1(BuddyListFragment paramBuddyListFragment) {}
  
  public void run()
  {
    Activity localActivity = this$0.getActivity();
    if ((localActivity != null) && (!localActivity.isFinishing())) {
      BuddyListFragment.access$000(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */