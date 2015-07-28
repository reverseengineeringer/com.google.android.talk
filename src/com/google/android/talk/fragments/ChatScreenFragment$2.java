package com.google.android.talk.fragments;

import android.widget.EditText;
import com.google.android.talk.util.ChatList;
import java.util.List;

class ChatScreenFragment$2
  implements Runnable
{
  ChatScreenFragment$2(ChatScreenFragment paramChatScreenFragment) {}
  
  public void run()
  {
    Runnable local1 = new Runnable()
    {
      public void run()
      {
        if (ChatScreenFragment.access$700(this$0).isClosed()) {
          return;
        }
        ChatScreenFragment.access$1100(this$0).setEnabled(true);
        ChatScreenFragment.access$1800(this$0, ChatScreenFragment.access$300(this$0), ChatScreenFragment.access$2100(this$0));
      }
    };
    synchronized (ChatScreenFragment.access$2200(this$0))
    {
      if (ChatScreenFragment.access$2300(this$0) == null)
      {
        ChatScreenFragment.access$2200(this$0).add(local1);
        ChatScreenFragment.access$2400(this$0).setAdapter(null);
        return;
      }
      local1.run();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */