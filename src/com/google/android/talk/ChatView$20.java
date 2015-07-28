package com.google.android.talk;

import android.view.View;
import android.view.View.OnClickListener;

class ChatView$20
  implements View.OnClickListener
{
  ChatView$20(ChatView paramChatView) {}
  
  public void onClick(View paramView)
  {
    ChatView.access$7200(this$0).setMessageBarState(ChatView.VideoChatState.VIDEO_ACTIVE);
    this$0.resumeVideoChat();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */