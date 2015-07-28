package com.google.android.talk.fragments;

import android.content.Intent;
import android.view.MenuItem;
import android.view.View;
import com.google.android.talk.ChatView;

public abstract interface ChatScreenFragment$ChatHost
{
  public abstract void cacheContactId(String paramString, long paramLong);
  
  public abstract void convertedToGroupChat(ChatView paramChatView, String paramString);
  
  public abstract long getCachedContactId(String paramString);
  
  public abstract View getMessageBar();
  
  public abstract boolean handleMenuItem(ChatView paramChatView, MenuItem paramMenuItem, int paramInt);
  
  public abstract void invalidateImSession();
  
  public abstract void startActivityForResult(Intent paramIntent, int paramInt);
  
  public abstract boolean startVideoChatAnimation();
  
  public abstract void update(View paramView);
  
  public abstract void willConvertToGroupChat(ChatView paramChatView, String paramString);
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.ChatHost
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */