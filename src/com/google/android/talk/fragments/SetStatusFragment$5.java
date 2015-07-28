package com.google.android.talk.fragments;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gtalkservice.IImSession;
import com.google.android.talk.AccountLoginUtils;
import com.google.android.talk.AccountSelectionActivity;

class SetStatusFragment$5
  implements Runnable
{
  SetStatusFragment$5(SetStatusFragment paramSetStatusFragment) {}
  
  public void run()
  {
    try
    {
      if (SetStatusFragment.access$400(this$0) != null) {
        SetStatusFragment.access$400(this$0).logout();
      }
      AccountLoginUtils.setInactiveAccount(SetStatusFragment.access$300(this$0), SetStatusFragment.access$1800(this$0));
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        Log.e("talk", "RemoteException failure", localRemoteException);
      }
    }
    AccountSelectionActivity.startAccountSelectionActivity(SetStatusFragment.access$1900(this$0));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */