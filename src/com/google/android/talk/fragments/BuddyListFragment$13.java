package com.google.android.talk.fragments;

import android.view.View;
import android.view.View.OnClickListener;

class BuddyListFragment$13
  implements View.OnClickListener
{
  BuddyListFragment$13(BuddyListFragment paramBuddyListFragment) {}
  
  public void onClick(View paramView)
  {
    paramView = this$0.getActivity();
    if (paramView != null) {
      BuddyListFragment.launchSearchActivity(BuddyListFragment.access$1100(this$0), this$0.getAccountInfo(), paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */