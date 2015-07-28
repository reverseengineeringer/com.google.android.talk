package com.google.android.talk;

import android.view.View;

class RosterListAdapter$3
  extends RosterListAdapter.Bind
{
  RosterListAdapter$3(RosterListAdapter paramRosterListAdapter, int paramInt)
  {
    super(paramRosterListAdapter, null);
  }
  
  public void bind(RosterListAdapter.MergeItem paramMergeItem) {}
  
  public void onInflate(RosterListAdapter.MergeItem paramMergeItem)
  {
    View localView = RosterListAdapter.MergeItem.access$1500(paramMergeItem);
    if ((localView instanceof DividerDrawingListItem)) {
      ((DividerDrawingListItem)localView).setShoverEnabled(false);
    }
    if (val$height >= 0) {
      access$1500getLayoutParamsheight = val$height;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListAdapter.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */