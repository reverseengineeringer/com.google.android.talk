package com.google.android.talk.fragments;

import android.app.LoaderManager;
import android.content.Loader;
import android.os.Bundle;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.talk.ServiceAvailableRunnable;

class RosterListFragment$2
  implements ServiceAvailableRunnable
{
  RosterListFragment$2(RosterListFragment paramRosterListFragment, int paramInt, Bundle paramBundle) {}
  
  public void run(IGTalkService paramIGTalkService)
  {
    RosterListFragment.access$000(this$0, "startLoading serviceAvailable runnable");
    paramIGTalkService = RosterListFragment.access$100(this$0).getLoader(val$id);
    if (paramIGTalkService != null)
    {
      paramIGTalkService.forceLoad();
      return;
    }
    RosterListFragment.access$100(this$0).initLoader(val$id, val$args, this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.RosterListFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */