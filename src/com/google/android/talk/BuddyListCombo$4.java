package com.google.android.talk;

import com.google.android.talk.fragments.BuddyListFragment;
import com.google.android.talk.fragments.SetStatusFragment.Controller;

class BuddyListCombo$4
  implements SetStatusFragment.Controller
{
  BuddyListCombo$4(BuddyListCombo paramBuddyListCombo) {}
  
  public void finish() {}
  
  public void updateRoster()
  {
    if (this$0.mBuddyListFragment != null) {
      this$0.mBuddyListFragment.reload();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyListCombo.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */