package com.google.android.talk;

import android.os.Handler;
import android.os.Message;

class ChatView$1
  extends Handler
{
  ChatView$1(ChatView paramChatView) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    case 123: 
      ChatView.access$000(this$0, "mHandler PICTURE_LOADED");
      ChatView.access$100(this$0, paramMessage);
      return;
    }
    ChatView.ChatAdapter.access$300(ChatView.access$200(this$0));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */