package com.google.android.talk.fragments;

import android.app.Dialog;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import com.google.android.talk.loaders.RosterListLoader.FilterMode;
import com.google.android.talk.loaders.RosterListLoader.SortMode;

class BuddyListFragment$8
  implements RadioGroup.OnCheckedChangeListener
{
  BuddyListFragment$8(BuddyListFragment paramBuddyListFragment, RadioGroup paramRadioGroup) {}
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (BuddyListFragment.access$900(this$0) == null) {
      return;
    }
    if (paramInt == RosterListLoader.SortMode.ACTIVE_STATUS_ALPHABETICAL.ordinal()) {
      this$0.setFilterMode(RosterListLoader.FilterMode.QUICK_CONTACTS, RosterListLoader.SortMode.ACTIVE_STATUS_ALPHABETICAL);
    }
    for (;;)
    {
      this$0.forceLoad();
      BuddyListFragment.access$900(this$0).dismiss();
      BuddyListFragment.access$902(this$0, null);
      val$rg.setOnCheckedChangeListener(null);
      return;
      if (paramInt == RosterListLoader.SortMode.ACTIVE_ALPHABETICAL.ordinal()) {
        this$0.setFilterMode(RosterListLoader.FilterMode.ALL_MINUS_HIDDEN, RosterListLoader.SortMode.ACTIVE_ALPHABETICAL);
      } else if (paramInt == RosterListLoader.SortMode.RECENCY_ALPHABETICAL.ordinal()) {
        this$0.setFilterMode(RosterListLoader.FilterMode.QUICK_CONTACTS, RosterListLoader.SortMode.RECENCY_ALPHABETICAL);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */