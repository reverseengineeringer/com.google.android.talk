package com.google.android.talk;

import android.widget.SearchView.OnCloseListener;
import com.google.android.talk.fragments.BuddyListFragment;

class BuddyListCombo$10
  implements SearchView.OnCloseListener
{
  BuddyListCombo$10(BuddyListCombo paramBuddyListCombo) {}
  
  public boolean onClose()
  {
    if (this$0.mBuddyListFragment != null) {
      this$0.mBuddyListFragment.cancelSearch();
    }
    if (BuddyListCombo.access$000(this$0) != null) {
      BuddyListCombo.access$000(this$0).gotoDefaultExpandedState();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyListCombo.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */