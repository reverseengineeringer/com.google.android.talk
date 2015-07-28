package com.google.android.talk;

import android.database.ContentObserver;
import android.os.Handler;

class ChatView$2
  extends ContentObserver
{
  ChatView$2(ChatView paramChatView, Handler paramHandler)
  {
    super(paramHandler);
  }
  
  public boolean deliverSelfNotifications()
  {
    return false;
  }
  
  public void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    ChatView.access$600(this$0).requeryForContactInfo();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */