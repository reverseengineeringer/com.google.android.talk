package com.google.android.talk;

import android.view.View;
import android.view.View.OnClickListener;

class BuddyInfo$1
  implements View.OnClickListener
{
  BuddyInfo$1(BuddyInfo paramBuddyInfo, View paramView1, View paramView2) {}
  
  public void onClick(View paramView)
  {
    if (paramView == val$removeButton)
    {
      BuddyInfo.access$300(this$0);
      this$0.finish();
    }
    while (paramView != val$blockButton) {
      return;
    }
    BuddyInfo.access$400(this$0);
    this$0.finish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyInfo.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */