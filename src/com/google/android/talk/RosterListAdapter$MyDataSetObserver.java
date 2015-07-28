package com.google.android.talk;

import android.database.DataSetObserver;

class RosterListAdapter$MyDataSetObserver
  extends DataSetObserver
{
  private RosterListAdapter$MyDataSetObserver(RosterListAdapter paramRosterListAdapter) {}
  
  public void onChanged() {}
  
  public void onInvalidated()
  {
    RosterListAdapter.access$2502(this$0, false);
    this$0.changeCursor(null, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListAdapter.MyDataSetObserver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */