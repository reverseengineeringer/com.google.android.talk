package com.google.android.talk;

import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.talk.fragments.ChatScreenFragment.ChatHost;

class ChatView$7
  implements View.OnClickListener
{
  ChatView$7(ChatView paramChatView) {}
  
  public void onClick(View paramView)
  {
    if (ChatView.access$7200(this$0).getState() != ChatView.VideoChatState.IDLE)
    {
      this$0.endVideoOrVoiceChat();
      return;
    }
    ChatView.access$3500(this$0).handleMenuItem(this$0, null, 2131755200);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */