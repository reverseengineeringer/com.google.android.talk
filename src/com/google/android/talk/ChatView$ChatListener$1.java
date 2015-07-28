package com.google.android.talk;

import com.google.android.talk.fragments.ChatScreenFragment.ChatHost;

class ChatView$ChatListener$1
  implements Runnable
{
  ChatView$ChatListener$1(ChatView.ChatListener paramChatListener, String paramString) {}
  
  public void run()
  {
    if (this$0.mChatView == null) {
      return;
    }
    ChatView.access$3500(this$0.mChatView).willConvertToGroupChat(this$0.mChatView, val$groupChatRoom);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.ChatListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */