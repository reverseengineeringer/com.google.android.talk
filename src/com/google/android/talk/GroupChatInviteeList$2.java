package com.google.android.talk;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.talk.fragments.GroupChatInviteeListFragment.Controller;

class GroupChatInviteeList$2
  implements GroupChatInviteeListFragment.Controller
{
  GroupChatInviteeList$2(GroupChatInviteeList paramGroupChatInviteeList) {}
  
  public void onInviteePicked(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("invitee", paramString);
    this$0.setResult(-1, new Intent().setAction(this$0.getIntent().toString()).putExtras(localBundle));
    this$0.finish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.GroupChatInviteeList.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */