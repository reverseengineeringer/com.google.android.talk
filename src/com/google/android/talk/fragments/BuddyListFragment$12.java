package com.google.android.talk.fragments;

import com.google.android.videochat.CallSession;
import com.google.android.videochat.VideoChatService.HardBinder;
import com.google.android.videochat.VideoChatServiceBinder;
import com.google.android.videochat.VideoChatServiceBinder.ServiceBoundCallback;

class BuddyListFragment$12
  implements VideoChatServiceBinder.ServiceBoundCallback
{
  BuddyListFragment$12(BuddyListFragment paramBuddyListFragment, String paramString, Runnable paramRunnable) {}
  
  public void onServiceBound(VideoChatService.HardBinder paramHardBinder)
  {
    paramHardBinder.getCallSession().terminateCall(val$bareJid);
    val$onEndedRunnable.run();
    BuddyListFragment.access$1000(this$0).unbind();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */