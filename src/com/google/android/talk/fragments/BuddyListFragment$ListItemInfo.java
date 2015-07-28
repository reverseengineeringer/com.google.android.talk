package com.google.android.talk.fragments;

public class BuddyListFragment$ListItemInfo
{
  public long mAccountId;
  public long mContactId;
  public boolean mOpenAudioChat;
  public String mUsername;
  
  public BuddyListFragment$ListItemInfo() {}
  
  public BuddyListFragment$ListItemInfo(String paramString, long paramLong)
  {
    this(paramString, paramLong, false);
  }
  
  public BuddyListFragment$ListItemInfo(String paramString, long paramLong, boolean paramBoolean)
  {
    mUsername = paramString;
    mAccountId = paramLong;
    mOpenAudioChat = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.ListItemInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */