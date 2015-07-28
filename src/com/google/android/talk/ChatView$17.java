package com.google.android.talk;

import android.view.View;
import android.view.View.OnClickListener;

class ChatView$17
  implements View.OnClickListener
{
  ChatView$17(ChatView paramChatView) {}
  
  public void onClick(View paramView)
  {
    paramView = this$0;
    if (!this$0.isOffTheRecord()) {}
    for (boolean bool = true;; bool = false)
    {
      paramView.goOffTheRecord(bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */