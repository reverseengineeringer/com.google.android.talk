package com.google.android.talk;

import com.google.android.talk.fragments.ChatScreenFragment.ChatHost;

class ChatView$ChatListener$3
  implements Runnable
{
  ChatView$ChatListener$3(ChatView.ChatListener paramChatListener, String paramString1, String paramString2) {}
  
  public void run()
  {
    if (this$0.mChatView == null) {}
    while (!this$0.mChatView.getContact().equals(val$room)) {
      return;
    }
    ChatView.access$000(this$0.mChatView, "ChatListener.participantJoined: nickname=" + val$nickname);
    ChatView.access$3500(this$0.mChatView).update(this$0.mChatView);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.ChatListener.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */