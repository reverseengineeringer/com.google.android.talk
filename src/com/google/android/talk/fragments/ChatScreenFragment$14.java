package com.google.android.talk.fragments;

import android.database.Cursor;
import android.view.View;
import com.google.android.talk.ChatView;

class ChatScreenFragment$14
  implements ChatScreenFragment.ViewRunnable
{
  ChatScreenFragment$14(ChatScreenFragment paramChatScreenFragment) {}
  
  public boolean run(View paramView)
  {
    paramView = ((ChatView)paramView).getCursor();
    if (paramView != null) {
      paramView.close();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */