package com.google.android.talk.fragments;

import android.view.View;
import com.google.android.talk.ChatView;

abstract interface ChatScreenFragment$ActiveChats
{
  public abstract void foreachChatView(ChatScreenFragment.ViewRunnable paramViewRunnable);
  
  public abstract View getRootView();
  
  public abstract ChatView getSelectedChatView();
  
  public abstract int getSelectedItemPosition();
  
  public abstract void onHiddenChanged(boolean paramBoolean);
  
  public abstract void selectNext(boolean paramBoolean, Runnable paramRunnable);
  
  public abstract void setAdapter(ChatScreenFragment.GalleryAdapter paramGalleryAdapter);
  
  public abstract void setSelection(int paramInt);
  
  public abstract void stop();
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.ActiveChats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */