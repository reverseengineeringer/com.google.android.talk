package com.google.android.talk.fragments;

import com.google.android.gtalkservice.IGTalkService;
import com.google.android.talk.ServiceAvailableRunnable;

class ChatScreenFragment$9
  implements ServiceAvailableRunnable
{
  ChatScreenFragment$9(ChatScreenFragment paramChatScreenFragment) {}
  
  public void run(IGTalkService paramIGTalkService)
  {
    this$0.serviceStateChanged(paramIGTalkService);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */