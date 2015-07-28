package com.google.android.talk.fragments;

import com.google.android.talk.TalkApp.AccountInfo;

public abstract interface BuddyListFragment$BuddyListHost
{
  public abstract void finishedLoading();
  
  public abstract TalkApp.AccountInfo getAccountInfo();
  
  public abstract BuddyListFragment.Controller getBuddyListController();
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.BuddyListHost
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */