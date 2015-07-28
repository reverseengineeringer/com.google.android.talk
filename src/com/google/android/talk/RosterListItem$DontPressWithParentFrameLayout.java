package com.google.android.talk;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

public class RosterListItem$DontPressWithParentFrameLayout
  extends FrameLayout
{
  public RosterListItem$DontPressWithParentFrameLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public RosterListItem$DontPressWithParentFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public RosterListItem$DontPressWithParentFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void setPressed(boolean paramBoolean)
  {
    if (paramBoolean == isPressed()) {}
    RosterListItem localRosterListItem;
    do
    {
      return;
      if (!paramBoolean) {
        break;
      }
      localRosterListItem = RosterListItem.access$4100(this);
    } while (localRosterListItem == null);
    if (!RosterListItem.access$4200(localRosterListItem))
    {
      if (localRosterListItem.isPressed())
      {
        super.setPressed(false);
        return;
      }
      RosterListItem.access$1200(localRosterListItem).setPressed(paramBoolean);
      return;
    }
    super.setPressed(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListItem.DontPressWithParentFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */