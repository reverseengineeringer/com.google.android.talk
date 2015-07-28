package com.google.android.talk;

import android.view.View;
import android.widget.ImageView;
import com.google.android.talk.fragments.BuddyListFragment;

class BuddyListCombo$2
  implements DrawerLayout.ExpandStateChangedListener
{
  BuddyListCombo$2(BuddyListCombo paramBuddyListCombo, ImageView paramImageView, View paramView, boolean paramBoolean) {}
  
  public void onExpandStateCompleted(DrawerLayout paramDrawerLayout)
  {
    boolean bool1 = false;
    boolean bool2 = paramDrawerLayout.isExpanded();
    int i;
    if (val$expandoButton != null)
    {
      paramDrawerLayout = val$expandoButton;
      if (!bool2)
      {
        i = 2130837611;
        paramDrawerLayout.setImageResource(i);
      }
    }
    else if (val$expandedRightView != null)
    {
      paramDrawerLayout = val$expandedRightView;
      if (!val$expandoOpen) {
        break label97;
      }
      i = 8;
    }
    for (;;)
    {
      paramDrawerLayout.setVisibility(i);
      if (this$0.mBuddyListFragment != null)
      {
        paramDrawerLayout = this$0.mBuddyListFragment;
        if (!bool2) {
          bool1 = true;
        }
        paramDrawerLayout.setNarrowMode(bool1);
      }
      return;
      i = 2130837610;
      break;
      label97:
      if (bool2) {
        i = 0;
      } else {
        i = 8;
      }
    }
  }
  
  public void onExpandStateStarted(DrawerLayout paramDrawerLayout, boolean paramBoolean)
  {
    if (paramBoolean) {
      this$0.mBuddyListFragment.setNarrowMode(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyListCombo.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */