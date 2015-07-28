package com.google.android.talk;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;

public class RosterListItem$RelativeLayoutPressHandler
  extends RelativeLayout
{
  public RosterListItem$RelativeLayoutPressHandler(Context paramContext)
  {
    super(paramContext);
  }
  
  public RosterListItem$RelativeLayoutPressHandler(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public RosterListItem$RelativeLayoutPressHandler(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void setPressed(boolean paramBoolean)
  {
    getParent();
    RosterListItem localRosterListItem = RosterListItem.access$4100(this);
    if (localRosterListItem == null) {
      return;
    }
    if (!RosterListItem.access$4200(localRosterListItem)) {
      RosterListItem.access$1300(localRosterListItem).setPressed(false);
    }
    RosterListItem.access$2900(localRosterListItem).setPressed(false);
    RosterListItem.access$2800(localRosterListItem).setPressed(false);
    super.setPressed(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListItem.RelativeLayoutPressHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */