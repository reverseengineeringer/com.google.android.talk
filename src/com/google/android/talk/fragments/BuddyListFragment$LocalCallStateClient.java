package com.google.android.talk.fragments;

import android.content.Context;
import android.os.Handler;
import com.google.android.talk.IRosterListAdapter;
import com.google.android.talk.RosterListAdapter.CallState;
import com.google.android.talk.TalkApp;
import com.google.android.videochat.CallState;
import com.google.android.videochat.CallStateClient;

class BuddyListFragment$LocalCallStateClient
  extends CallStateClient
{
  public BuddyListFragment$LocalCallStateClient(BuddyListFragment paramBuddyListFragment, Context paramContext)
  {
    super(paramContext);
  }
  
  public void onCallStateUpdate(final String paramString, final CallState paramCallState, boolean paramBoolean, Object paramObject)
  {
    TalkApp.LOGD("talk", "BuddyListFragment call listener state: " + libjingleCallState + " " + paramString);
    this$0.mHandler.post(new Runnable()
    {
      public void run()
      {
        if (BuddyListFragment.access$800(this$0) != null)
        {
          this$0.mHandler.removeCallbacks(BuddyListFragment.access$800(this$0));
          BuddyListFragment.access$802(this$0, null);
        }
        RosterListAdapter.CallState localCallState = new RosterListAdapter.CallState();
        switch (paramCallStatelibjingleCallState)
        {
        }
        for (;;)
        {
          mIsVideo = paramCallStatevideo;
          this$0.mRosterListAdapter.setActiveCallState(localCallState);
          return;
          mPending = true;
          mBareJid = paramString;
          continue;
          mBareJid = paramString;
        }
      }
    });
  }
  
  public void onDisconnected()
  {
    this$0.mHandler.post(new Runnable()
    {
      public void run()
      {
        BuddyListFragment.access$802(this$0, null);
        RosterListAdapter.CallState localCallState = new RosterListAdapter.CallState();
        this$0.mRosterListAdapter.setActiveCallState(localCallState);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.LocalCallStateClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */