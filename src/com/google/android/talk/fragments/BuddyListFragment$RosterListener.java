package com.google.android.talk.fragments;

import android.os.Handler;
import com.google.android.gtalkservice.IRosterListener.Stub;

class BuddyListFragment$RosterListener
  extends IRosterListener.Stub
{
  BuddyListFragment mFragment;
  
  public BuddyListFragment$RosterListener(BuddyListFragment paramBuddyListFragment)
  {
    mFragment = paramBuddyListFragment;
  }
  
  public void clearRefs()
  {
    mFragment = null;
  }
  
  public void presenceChanged(String paramString)
  {
    BuddyListFragment localBuddyListFragment = mFragment;
    if (localBuddyListFragment == null) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder().append("RosterListener.presenceChanged");
    if (paramString != null) {}
    for (paramString = " for " + paramString;; paramString = "")
    {
      BuddyListFragment.access$500(localBuddyListFragment, paramString);
      mHandler.post(new Runnable()
      {
        public void run()
        {
          if (mFragment == null) {
            return;
          }
          mFragment.forceLoad();
        }
      });
      return;
    }
  }
  
  public void rosterChanged()
  {
    BuddyListFragment localBuddyListFragment = mFragment;
    if (localBuddyListFragment == null) {
      return;
    }
    BuddyListFragment.access$200(localBuddyListFragment, "RosterListener.rosterChanged");
    mHandler.post(new Runnable()
    {
      public void run()
      {
        if (mFragment == null) {}
        while (mFragment.getActivity() == null) {
          return;
        }
        mFragment.forceLoad();
        mFragment.mController.onDisplayProgress(false);
      }
    });
  }
  
  public void selfPresenceChanged()
  {
    BuddyListFragment localBuddyListFragment = mFragment;
    if (localBuddyListFragment == null) {
      return;
    }
    BuddyListFragment.access$500(localBuddyListFragment, "RosterListener.selfPresenceChanged");
    mHandler.post(new Runnable()
    {
      public void run()
      {
        if (mFragment == null) {
          return;
        }
        BuddyListFragment.access$300(mFragment);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.RosterListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */