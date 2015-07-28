package com.google.android.talk;

import android.os.Handler;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import com.google.android.talk.fragments.BuddyListFragment;

class BuddyListCombo$1
  implements MenuItem.OnActionExpandListener
{
  BuddyListCombo$1(BuddyListCombo paramBuddyListCombo) {}
  
  public boolean onMenuItemActionCollapse(MenuItem paramMenuItem)
  {
    if (BuddyListCombo.access$000(this$0) != null) {
      BuddyListCombo.access$000(this$0).gotoDefaultExpandedState();
    }
    if (this$0.mBuddyListFragment != null) {
      this$0.mBuddyListFragment.cancelSearch();
    }
    return true;
  }
  
  public boolean onMenuItemActionExpand(MenuItem paramMenuItem)
  {
    if (BuddyListCombo.access$000(this$0) != null) {
      this$0.mHandler.postDelayed(new Runnable()
      {
        public void run()
        {
          if (!this$0.isFinishing()) {
            BuddyListCombo.access$000(this$0).setExpanded(true);
          }
        }
      }, 50L);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyListCombo.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */