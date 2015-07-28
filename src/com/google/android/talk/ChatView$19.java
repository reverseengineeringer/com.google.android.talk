package com.google.android.talk;

import com.google.android.talk.videochat.VideoChatActivity;

class ChatView$19
  implements Runnable
{
  ChatView$19(ChatView paramChatView) {}
  
  public void run()
  {
    ChatView.access$7200(this$0).setMessageBarState(ChatView.VideoChatState.VIDEO_WAITING);
    VideoChatActivity.startActivityToInitiate(ChatView.access$2400(this$0), ChatView.access$7000(this$0), this$0.getBestAvailableJid());
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */