package com.google.android.talk.util;

import android.database.ContentObserver;
import android.os.Handler;
import android.util.Log;

class ChatList$2
  extends ContentObserver
{
  ChatList$2(ChatList paramChatList, Handler paramHandler)
  {
    super(paramHandler);
  }
  
  public void onChange(boolean paramBoolean)
  {
    if (Log.isLoggable("talk", 3)) {
      ChatList.access$000(this$0, "SwitcherAdapter.mContentObserver.onChange");
    }
    ChatList.access$400(this$0, false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.util.ChatList.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */