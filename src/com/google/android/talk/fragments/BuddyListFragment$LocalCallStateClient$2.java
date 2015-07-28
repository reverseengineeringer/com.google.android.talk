package com.google.android.talk.fragments;

import android.os.Handler;
import com.google.android.talk.IRosterListAdapter;
import com.google.android.talk.RosterListAdapter.CallState;
import com.google.android.videochat.CallState;

class BuddyListFragment$LocalCallStateClient$2
  implements Runnable
{
  BuddyListFragment$LocalCallStateClient$2(BuddyListFragment.LocalCallStateClient paramLocalCallStateClient, CallState paramCallState, String paramString) {}
  
  public void run()
  {
    if (BuddyListFragment.access$800(this$1.this$0) != null)
    {
      this$1.this$0.mHandler.removeCallbacks(BuddyListFragment.access$800(this$1.this$0));
      BuddyListFragment.access$802(this$1.this$0, null);
    }
    RosterListAdapter.CallState localCallState = new RosterListAdapter.CallState();
    switch (val$callState.libjingleCallState)
    {
    }
    for (;;)
    {
      mIsVideo = val$callState.video;
      this$1.this$0.mRosterListAdapter.setActiveCallState(localCallState);
      return;
      mPending = true;
      mBareJid = val$remoteBareJid;
      continue;
      mBareJid = val$remoteBareJid;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.LocalCallStateClient.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */