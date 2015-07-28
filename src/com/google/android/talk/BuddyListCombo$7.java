package com.google.android.talk;

import android.app.ActionBar.OnNavigationListener;
import android.content.Intent;
import android.text.TextUtils;
import android.widget.ArrayAdapter;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.talk.fragments.BuddyListFragment;

class BuddyListCombo$7
  implements ActionBar.OnNavigationListener
{
  BuddyListCombo$7(BuddyListCombo paramBuddyListCombo) {}
  
  public boolean onNavigationItemSelected(int paramInt, long paramLong)
  {
    TalkApp.AccountInfo localAccountInfo = (TalkApp.AccountInfo)BuddyListCombo.access$1000(this$0).getItem(paramInt);
    if (localAccountInfo == null) {
      if (TalkApp.debugLoggable()) {
        BuddyListCombo.log("account switcher setOnItemSelectedListener null account!!! ");
      }
    }
    label182:
    label243:
    for (;;)
    {
      return true;
      if ((!TextUtils.isEmpty(access$600this$0).username)) && (!access$600this$0).username.equals(username)))
      {
        if (this$0.mBuddyListFragment != null) {
          this$0.mBuddyListFragment.setEnabled(false);
        }
        BuddyListCombo.access$1100(this$0);
        IGTalkService localIGTalkService = BuddyListCombo.access$500(this$0).getGTalkService();
        if ((localIGTalkService != null) && (AccountLoginUtils.isSignedIn(username, localIGTalkService)))
        {
          paramInt = 1;
          if (paramInt != 0) {
            break label182;
          }
          BuddyListCombo.access$1200(this$0, false);
          this$0.loginToAccount(localAccountInfo);
        }
        for (;;)
        {
          if (BuddyListCombo.access$1300(this$0) != BuddyListCombo.Focus.ChatScreen) {
            break label243;
          }
          BuddyListCombo.access$1400(this$0, BuddyListCombo.Focus.BuddyList);
          return true;
          paramInt = 0;
          break;
          BuddyListCombo.access$602(this$0, localAccountInfo);
          this$0.setIntent(this$0.getIntent().putExtra("accountId", access$600this$0).accountId));
          AccountLoginUtils.setActiveAccount(BuddyListCombo.access$600(this$0), this$0);
          this$0.switchAccounts();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyListCombo.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */