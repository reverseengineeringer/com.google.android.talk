package com.google.android.talk;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;

class RosterListAdapter$2
  extends RosterListAdapter.Bind
{
  RosterListAdapter$2(RosterListAdapter paramRosterListAdapter)
  {
    super(paramRosterListAdapter, null);
  }
  
  public void bind(RosterListAdapter.MergeItem paramMergeItem) {}
  
  public void onInflate(RosterListAdapter.MergeItem paramMergeItem)
  {
    View localView = RosterListAdapter.MergeItem.access$1500(paramMergeItem);
    TextView localTextView1 = (TextView)localView.findViewById(2131755019);
    TextView localTextView2 = (TextView)localView.findViewById(2131755126);
    localTextView1.setText(2131493054);
    localTextView2.setText(RosterListAdapter.access$1400(this$0).getString(2131493055, new Object[] { RosterListAdapter.access$2000(this$0) }));
    localView.findViewById(2131755131).setBackgroundResource(2130837666);
    ((ImageView)localView.findViewById(2131755117)).setImageResource(2130837590);
    localView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent("android.intent.action.MAIN", null);
        paramAnonymousView.setClass(RosterListAdapter.access$1400(this$0), AddBuddyScreen.class);
        paramAnonymousView.putExtra("accountId", RosterListAdapter.access$500(this$0));
        paramAnonymousView.putExtra("start_name", RosterListAdapter.access$2000(this$0));
        RosterListAdapter.access$1400(this$0).startActivity(paramAnonymousView);
      }
    });
    indent(paramMergeItem);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListAdapter.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */