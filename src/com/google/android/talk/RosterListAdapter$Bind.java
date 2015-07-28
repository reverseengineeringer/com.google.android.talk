package com.google.android.talk;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout.LayoutParams;

abstract class RosterListAdapter$Bind
{
  private RosterListAdapter$Bind(RosterListAdapter paramRosterListAdapter) {}
  
  public abstract void bind(RosterListAdapter.MergeItem paramMergeItem);
  
  protected void indent(RosterListAdapter.MergeItem paramMergeItem)
  {
    if (!RosterListAdapter.access$900(this$0))
    {
      int i = RosterListAdapter.access$1400(this$0).getResources().getDimensionPixelOffset(2131427333);
      access$1500getChildAt0getLayoutParamsleftMargin = i;
    }
  }
  
  public abstract void onInflate(RosterListAdapter.MergeItem paramMergeItem);
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListAdapter.Bind
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */