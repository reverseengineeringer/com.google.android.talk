package com.google.android.talk.fragments;

import android.os.Handler;
import com.google.android.gtalkservice.IChatListener.Stub;

class BuddyListFragment$ChatListener
  extends IChatListener.Stub
{
  private Runnable mForceLoadRunnable = new Runnable()
  {
    public void run()
    {
      if (mFragment == null) {
        return;
      }
      mFragment.forceLoad();
    }
  };
  private BuddyListFragment mFragment;
  
  public BuddyListFragment$ChatListener(BuddyListFragment paramBuddyListFragment)
  {
    mFragment = paramBuddyListFragment;
  }
  
  public void callEnded() {}
  
  public void chatClosed(String paramString)
  {
    BuddyListFragment localBuddyListFragment = mFragment;
    if (localBuddyListFragment == null) {
      return;
    }
    BuddyListFragment.access$500(localBuddyListFragment, "ChatListener.chatClosed from " + paramString);
    mHandler.post(mForceLoadRunnable);
  }
  
  public void chatRead(String paramString)
  {
    BuddyListFragment localBuddyListFragment = mFragment;
    if (localBuddyListFragment == null) {
      return;
    }
    BuddyListFragment.access$500(localBuddyListFragment, "ChatListener.ChatRead from " + paramString);
    mHandler.post(mForceLoadRunnable);
  }
  
  public void clearRefs()
  {
    mFragment = null;
  }
  
  public void convertedToGroupChat(String paramString1, String paramString2, long paramLong) {}
  
  public void missedCall() {}
  
  public void newMessageReceived(String paramString1, String paramString2, boolean paramBoolean)
  {
    BuddyListFragment localBuddyListFragment = mFragment;
    if (localBuddyListFragment == null) {}
    do
    {
      return;
      BuddyListFragment.access$500(localBuddyListFragment, "ChatListener.newMessageReceived from " + paramString1);
    } while (paramString2 == null);
    mHandler.post(mForceLoadRunnable);
  }
  
  public void newMessageSent(String paramString) {}
  
  public void participantJoined(String paramString1, String paramString2) {}
  
  public void participantLeft(String paramString1, String paramString2) {}
  
  public boolean useLightweightNotify()
  {
    return false;
  }
  
  public void willConvertToGroupChat(String paramString1, String paramString2, long paramLong) {}
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.ChatListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */