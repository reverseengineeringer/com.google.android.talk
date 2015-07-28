package com.google.android.talk.fragments;

import android.content.Intent;
import com.google.android.talk.util.ChatList;

class ChatScreenFragment$GalleryAdapter
{
  ChatList mLocalChatList;
  
  public ChatScreenFragment$GalleryAdapter(ChatScreenFragment paramChatScreenFragment, ChatList paramChatList)
  {
    mLocalChatList = paramChatList;
  }
  
  public Intent getIntent(int paramInt)
  {
    mLocalChatList.moveToPosition(paramInt);
    return mLocalChatList.getIntent();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.GalleryAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */