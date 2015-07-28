package com.google.android.talk;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class RosterListAdapter$2$1
  implements View.OnClickListener
{
  RosterListAdapter$2$1(RosterListAdapter.2 param2) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent("android.intent.action.MAIN", null);
    paramView.setClass(RosterListAdapter.access$1400(this$1.this$0), AddBuddyScreen.class);
    paramView.putExtra("accountId", RosterListAdapter.access$500(this$1.this$0));
    paramView.putExtra("start_name", RosterListAdapter.access$2000(this$1.this$0));
    RosterListAdapter.access$1400(this$1.this$0).startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListAdapter.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */