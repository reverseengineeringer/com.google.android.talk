package com.google.android.talk;

import android.widget.SearchView;
import android.widget.SearchView.OnQueryTextListener;
import com.google.android.talk.fragments.BuddyListFragment;

class BuddyListCombo$9
  implements SearchView.OnQueryTextListener
{
  BuddyListCombo$9(BuddyListCombo paramBuddyListCombo) {}
  
  public boolean onQueryTextChange(String paramString)
  {
    if (this$0.mBuddyListFragment == null) {}
    while (BuddyListCombo.access$1900(this$0).isIconified()) {
      return false;
    }
    this$0.mBuddyListFragment.setQueryString(paramString);
    if ((BuddyListCombo.access$000(this$0) != null) && (BuddyListCombo.access$1900(this$0).isIconified())) {
      BuddyListCombo.access$000(this$0).gotoDefaultExpandedState();
    }
    return true;
  }
  
  public boolean onQueryTextSubmit(String paramString)
  {
    if (this$0.mBuddyListFragment != null) {
      this$0.mBuddyListFragment.doHistorySearch();
    }
    for (;;)
    {
      return true;
      BuddyListFragment.launchSearchActivity(paramString, this$0.getAccountInfo(), this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyListCombo.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */