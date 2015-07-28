package com.google.android.talk;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

class AddBuddyScreen$3
  implements View.OnKeyListener
{
  AddBuddyScreen$3(AddBuddyScreen paramAddBuddyScreen) {}
  
  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramView.getId() == 2131755032) && (paramInt == 66))
    {
      this$0.inviteBuddies();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AddBuddyScreen.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */