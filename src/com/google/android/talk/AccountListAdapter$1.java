package com.google.android.talk;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

class AccountListAdapter$1
  implements View.OnClickListener
{
  AccountListAdapter$1(AccountListAdapter paramAccountListAdapter, Button paramButton, View paramView) {}
  
  public void onClick(View paramView)
  {
    if (!AccountListAdapter.access$000(this$0))
    {
      val$signInButton.setVisibility(4);
      access$100this$0).loading = true;
      val$root.findViewById(2131755024).setVisibility(0);
    }
    paramView = this$0;
    int j = AccountListAdapter.access$200(this$0);
    if (AccountListAdapter.access$000(this$0)) {}
    for (int i = 124;; i = 123)
    {
      AccountListAdapter.access$300(paramView, j, i);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountListAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */