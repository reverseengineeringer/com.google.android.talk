package com.google.android.talk;

import android.content.Intent;
import com.google.android.talk.fragments.BuddyListFragment;
import com.google.android.talk.fragments.ChatScreenFragment;

class BuddyListCombo$6
  implements Runnable
{
  BuddyListCombo$6(BuddyListCombo paramBuddyListCombo, boolean paramBoolean, Intent paramIntent) {}
  
  public void run()
  {
    if (val$changedAccounts) {
      if (BuddyListCombo.access$500(this$0).isAccountIdValid(access$600this$0).accountId)) {
        AccountSelectionActivity.startAccountSelectionActivity(this$0);
      }
    }
    for (;;)
    {
      BuddyListCombo.access$800(this$0, val$intent);
      if (this$0.mChatScreenFragment != null) {
        this$0.mChatScreenFragment.onNewIntent(val$intent);
      }
      return;
      this$0.loginToAccount(BuddyListCombo.access$600(this$0));
      BuddyListCombo.access$700(this$0, access$600this$0).accountId);
      continue;
      if (this$0.mBuddyListFragment != null) {
        this$0.mBuddyListFragment.softUiReset();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyListCombo.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */