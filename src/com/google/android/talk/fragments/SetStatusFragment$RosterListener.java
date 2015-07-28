package com.google.android.talk.fragments;

import android.app.Activity;
import com.google.android.gtalkservice.IRosterListener.Stub;

class SetStatusFragment$RosterListener
  extends IRosterListener.Stub
{
  Activity mActivity;
  SetStatusFragment mFragment;
  
  public SetStatusFragment$RosterListener(SetStatusFragment paramSetStatusFragment, Activity paramActivity)
  {
    mFragment = paramSetStatusFragment;
    mActivity = paramActivity;
  }
  
  public void clearRefs()
  {
    mFragment = null;
    mActivity = null;
  }
  
  public void presenceChanged(String paramString) {}
  
  public void rosterChanged() {}
  
  public void selfPresenceChanged()
  {
    SetStatusFragment localSetStatusFragment = mFragment;
    Activity localActivity = mActivity;
    if ((localSetStatusFragment == null) || (localActivity == null)) {
      return;
    }
    localActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (mFragment == null) {
          return;
        }
        SetStatusFragment.access$000(mFragment);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.RosterListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */