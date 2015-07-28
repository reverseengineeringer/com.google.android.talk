package com.google.android.talk;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class RosterListAdapter$1$1
  implements View.OnClickListener
{
  RosterListAdapter$1$1(RosterListAdapter.1 param1) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent();
    paramView.setAction("android.intent.action.VIEW");
    paramView.putExtra("from", access$1200this$1.this$0).getActiveAccount().username);
    paramView.putExtra("query", RosterListAdapter.access$2000(this$1.this$0));
    paramView.putExtra("accountId", RosterListAdapter.access$500(this$1.this$0));
    paramView.setClass(RosterListAdapter.access$1400(this$1.this$0), SearchActivity.class);
    RosterListAdapter.access$1400(this$1.this$0).startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListAdapter.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */