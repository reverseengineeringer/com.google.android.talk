package com.google.android.talk;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory;
import android.view.View;

class RosterListAdapter$RosterListAdapterInner$RosterListItemFactory
  implements LayoutInflater.Factory
{
  private RosterListAdapter$RosterListAdapterInner$RosterListItemFactory(RosterListAdapter.RosterListAdapterInner paramRosterListAdapterInner) {}
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if ((paramString != null) && (paramString.equals(RosterListItem.class.getName()))) {
      return new RosterListItem(RosterListAdapter.access$1300(this$1.this$0), paramContext);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListAdapter.RosterListAdapterInner.RosterListItemFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */