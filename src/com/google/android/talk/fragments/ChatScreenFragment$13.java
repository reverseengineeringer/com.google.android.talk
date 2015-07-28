package com.google.android.talk.fragments;

import android.view.View;
import com.google.android.talk.ChatView;

class ChatScreenFragment$13
  implements ChatScreenFragment.ViewRunnable
{
  ChatScreenFragment$13(ChatScreenFragment paramChatScreenFragment) {}
  
  public boolean run(View paramView)
  {
    ((ChatView)paramView).onActivityPause();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */