package com.google.android.talk.fragments;

public abstract interface BuddyListFragment$Controller
{
  public abstract void onAddToContacts(String paramString);
  
  public abstract void onCloseAllChats();
  
  public abstract void onDisplayProgress(boolean paramBoolean);
  
  public abstract void onInviteFriend(long paramLong);
  
  public abstract void onLeaveChat(long paramLong, String paramString);
  
  public abstract void onLogout();
  
  public abstract void onMakeInvite(BuddyListFragment.ListItemInfo paramListItemInfo);
  
  public abstract void onOpenChat(BuddyListFragment.ListItemInfo paramListItemInfo);
  
  public abstract void onOpenGroupChat(BuddyListFragment.ListItemInfo paramListItemInfo);
  
  public abstract void onRequestSetSelfStatus(long paramLong);
  
  public abstract void onShowContactInfo(BuddyListFragment.ListItemInfo paramListItemInfo);
  
  public abstract void onShowInvites(BuddyListFragment.ListItemInfo paramListItemInfo);
  
  public abstract boolean onVideoChatStarted();
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.Controller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */