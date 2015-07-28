package com.google.android.talk.fragments;

import android.widget.EditText;
import com.google.android.talk.util.ChatList;

class ChatScreenFragment$2$1
  implements Runnable
{
  ChatScreenFragment$2$1(ChatScreenFragment.2 param2) {}
  
  public void run()
  {
    if (ChatScreenFragment.access$700(this$1.this$0).isClosed()) {
      return;
    }
    ChatScreenFragment.access$1100(this$1.this$0).setEnabled(true);
    ChatScreenFragment.access$1800(this$1.this$0, ChatScreenFragment.access$300(this$1.this$0), ChatScreenFragment.access$2100(this$1.this$0));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */