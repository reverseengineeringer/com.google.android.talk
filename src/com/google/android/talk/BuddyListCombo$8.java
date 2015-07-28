package com.google.android.talk;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.google.android.gsf.TalkContract.Contacts;
import com.google.android.gsf.TalkContract.Messages;
import com.google.android.gtalkservice.GroupChatInvitation;
import com.google.android.talk.fragments.BuddyListFragment;
import com.google.android.talk.fragments.BuddyListFragment.Controller;
import com.google.android.talk.fragments.BuddyListFragment.ListItemInfo;
import com.google.android.talk.fragments.ChatScreenFragment;
import java.util.HashMap;

class BuddyListCombo$8
  implements BuddyListFragment.Controller
{
  BuddyListCombo$8(BuddyListCombo paramBuddyListCombo) {}
  
  public void onAddToContacts(String paramString)
  {
    BuddyListCombo.access$1500(this$0);
    BuddyListCombo.access$1800(this$0, paramString);
  }
  
  public void onCloseAllChats()
  {
    if (BuddyListCombo.access$1700(this$0)) {
      BuddyListCombo.access$1400(this$0, BuddyListCombo.Focus.SelfStatus);
    }
    BuddyListCombo.access$1100(this$0);
  }
  
  public void onDisplayProgress(boolean paramBoolean)
  {
    View localView = this$0.findViewById(16908301);
    if (localView != null) {
      if (!paramBoolean) {
        break label26;
      }
    }
    label26:
    for (int i = 0;; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }
  
  public void onInviteFriend(long paramLong)
  {
    BuddyListCombo.access$1500(this$0);
    BuddyListCombo.access$1600(this$0);
    Intent localIntent = new Intent("android.intent.action.MAIN", null);
    localIntent.setClass(this$0, AddBuddyScreen.class);
    localIntent.putExtra("accountId", paramLong);
    this$0.startActivity(localIntent);
  }
  
  public void onLeaveChat(long paramLong, String paramString)
  {
    BuddyListCombo.access$1500(this$0);
    if (this$0.mChatScreenFragment != null) {
      this$0.mChatScreenFragment.leaveChat(paramString);
    }
  }
  
  public void onLogout()
  {
    AccountSelectionActivity.startAccountSelectionActivity(this$0);
  }
  
  public void onMakeInvite(BuddyListFragment.ListItemInfo paramListItemInfo)
  {
    Intent localIntent = new Intent("android.intent.action.GTALK_MANAGE_SUBSCRIPTION", TalkContract.Contacts.CONTENT_URI);
    localIntent.setClass(this$0, SubscriptionScreen.class);
    localIntent.putExtra("from", mUsername);
    localIntent.putExtra("accountId", mAccountId);
    this$0.startActivity(localIntent);
  }
  
  public void onOpenChat(BuddyListFragment.ListItemInfo paramListItemInfo)
  {
    BuddyListCombo.access$1500(this$0);
    BuddyListCombo.access$1600(this$0);
    Intent localIntent = new Intent("android.intent.action.VIEW", TalkContract.Messages.getContentUriByContact(mAccountId, mUsername));
    localIntent.putExtra("from", mUsername);
    localIntent.putExtra("accountId", mAccountId);
    if (mOpenAudioChat) {
      localIntent.putExtra("vc", true);
    }
    BuddyListCombo.access$1400(this$0, BuddyListCombo.Focus.ChatScreen);
    this$0.mChatScreenFragment.onNewIntent(localIntent);
  }
  
  public void onOpenGroupChat(BuddyListFragment.ListItemInfo paramListItemInfo)
  {
    BuddyListCombo.access$1500(this$0);
    BuddyListCombo.access$1600(this$0);
    Object localObject = TalkContract.Messages.getContentUriByThreadId(mContactId);
    GroupChatInvitation localGroupChatInvitation = (GroupChatInvitation)access$500this$0).mGroupChatInvitations.get(mUsername);
    localObject = new Intent("android.intent.action.VIEW", (Uri)localObject);
    ((Intent)localObject).putExtra("from", mUsername);
    ((Intent)localObject).putExtra("accountId", mAccountId);
    ((Intent)localObject).putExtra("is_muc", true);
    if (localGroupChatInvitation != null)
    {
      ((Intent)localObject).setClass(this$0, GroupChatApproval.class);
      ((Intent)localObject).putExtra("muc_inviter", localGroupChatInvitation.getInviter());
      ((Intent)localObject).putExtra("muc_password", localGroupChatInvitation.getPassword());
      ((Intent)localObject).putExtra("room", localGroupChatInvitation.getRoomAddress());
      this$0.startActivityForResult((Intent)localObject, 1);
      return;
    }
    BuddyListCombo.access$1400(this$0, BuddyListCombo.Focus.ChatScreen);
    this$0.mChatScreenFragment.onNewIntent((Intent)localObject);
  }
  
  public void onRequestSetSelfStatus(long paramLong)
  {
    BuddyListCombo.access$1500(this$0);
    BuddyListCombo.access$1600(this$0);
    BuddyListCombo.access$1400(this$0, BuddyListCombo.Focus.SelfStatus);
    if (this$0.mBuddyListFragment != null) {
      this$0.mBuddyListFragment.setFocus(null);
    }
  }
  
  public void onShowContactInfo(BuddyListFragment.ListItemInfo paramListItemInfo)
  {
    BuddyListCombo.access$1500(this$0);
    BuddyListCombo.access$100(this$0, paramListItemInfo);
  }
  
  public void onShowInvites(BuddyListFragment.ListItemInfo paramListItemInfo)
  {
    BuddyListCombo.access$1500(this$0);
    Intent localIntent = new Intent();
    localIntent.setClass(this$0, InvitedUserList.class);
    localIntent.putExtra("accountId", mAccountId);
    this$0.startActivity(localIntent);
  }
  
  public boolean onVideoChatStarted()
  {
    return this$0.startVideoChatAnimation();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyListCombo.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */