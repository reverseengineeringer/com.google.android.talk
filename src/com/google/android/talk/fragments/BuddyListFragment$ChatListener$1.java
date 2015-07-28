package com.google.android.talk.fragments;

class BuddyListFragment$ChatListener$1
  implements Runnable
{
  BuddyListFragment$ChatListener$1(BuddyListFragment.ChatListener paramChatListener) {}
  
  public void run()
  {
    if (BuddyListFragment.ChatListener.access$400(this$0) == null) {
      return;
    }
    BuddyListFragment.ChatListener.access$400(this$0).forceLoad();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.ChatListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */