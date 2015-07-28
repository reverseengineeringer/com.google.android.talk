package com.google.android.talk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class GroupChatApproval$1
  implements DialogInterface.OnClickListener
{
  GroupChatApproval$1(GroupChatApproval paramGroupChatApproval) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    GroupChatApproval.access$000(this$0);
    switch (paramInt)
    {
    }
    for (;;)
    {
      this$0.finish();
      return;
      this$0.acceptGroupChat();
      continue;
      this$0.declineGroupChat();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.GroupChatApproval.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */