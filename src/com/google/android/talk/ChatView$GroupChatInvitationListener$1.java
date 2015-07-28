package com.google.android.talk;

import com.google.android.gtalkservice.GroupChatInvitation;

class ChatView$GroupChatInvitationListener$1
  implements Runnable
{
  ChatView$GroupChatInvitationListener$1(ChatView.GroupChatInvitationListener paramGroupChatInvitationListener, GroupChatInvitation paramGroupChatInvitation) {}
  
  public void run()
  {
    if (this$0.mChatView == null) {}
    do
    {
      return;
      ChatView.access$3902(this$0.mChatView, val$invitation.getInviter());
      ChatView.access$4002(this$0.mChatView, val$invitation.getRoomAddress());
      ChatView.access$4102(this$0.mChatView, val$invitation.getPassword());
      if (TalkApp.verboseLoggable()) {
        ChatView.access$4200(this$0.mChatView, "received MUC invitation from " + ChatView.access$3900(this$0.mChatView) + ", room=" + ChatView.access$4000(this$0.mChatView));
      }
    } while (ChatView.access$4300(this$0.mChatView) == null);
    ChatView.access$4400(this$0.mChatView, ChatView.access$3900(this$0.mChatView), ChatView.access$4000(this$0.mChatView), ChatView.access$4100(this$0.mChatView));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.GroupChatInvitationListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */