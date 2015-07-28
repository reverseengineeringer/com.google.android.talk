package com.google.android.talk.fragments;

import android.graphics.drawable.Drawable;

public abstract interface ChatScreenFragment$Controller
{
  public abstract void onLastChatClosed();
  
  public abstract void onShowContactInfo(BuddyListFragment.ListItemInfo paramListItemInfo);
  
  public abstract boolean onVideoChatStarted();
  
  public abstract void setTitle(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt1, int paramInt2, Drawable paramDrawable);
  
  public abstract void updateOtrStatus(boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.Controller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */