package com.google.android.talk.fragments;

class ChatScreenFragment$7
  implements Runnable
{
  ChatScreenFragment$7(ChatScreenFragment paramChatScreenFragment, String paramString, long paramLong, boolean paramBoolean) {}
  
  public void run()
  {
    ChatScreenFragment.access$1200(this$0, "wait for service task: create empty ChatSession for " + val$contact);
    ChatScreenFragment.access$500(this$0, val$contact, val$accountId, val$ensureChatsInDb);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */