package com.google.android.talk;

import android.text.TextUtils;

class RosterListAdapter$4
  extends RosterListAdapter.Bind
{
  RosterListAdapter$4(RosterListAdapter paramRosterListAdapter)
  {
    super(paramRosterListAdapter, null);
  }
  
  public void bind(RosterListAdapter.MergeItem paramMergeItem)
  {
    boolean bool = true;
    paramMergeItem = (RosterListItem)RosterListAdapter.MergeItem.access$1500(paramMergeItem);
    paramMergeItem.setIsSelfItem(true);
    if (RosterListAdapter.access$2100(this$0) != null)
    {
      if ((RosterListAdapter.access$300(this$0)) && (TextUtils.isEmpty(RosterListAdapter.access$600(this$0)))) {}
      for (;;)
      {
        paramMergeItem.setActivated(bool);
        paramMergeItem.bind(RosterListAdapter.access$2100(this$0), RosterListAdapter.access$500(this$0), this$0.isScrolling(), RosterListAdapter.access$700(this$0), false, RosterListAdapter.access$800(this$0), RosterListAdapter.access$900(this$0), null, RosterListAdapter.access$300(this$0), RosterListAdapter.access$1100(this$0));
        return;
        bool = false;
      }
    }
    paramMergeItem.bindEmpty();
  }
  
  public void onInflate(RosterListAdapter.MergeItem paramMergeItem) {}
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListAdapter.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */