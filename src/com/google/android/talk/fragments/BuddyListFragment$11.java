package com.google.android.talk.fragments;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gtalkservice.IImSession;

class BuddyListFragment$11
  implements Runnable
{
  BuddyListFragment$11(BuddyListFragment paramBuddyListFragment) {}
  
  public void run()
  {
    this$0.mController.onCloseAllChats();
    try
    {
      if (this$0.mImSession != null)
      {
        Log.d("talk", "[BuddyList] closeAllChats");
        this$0.mImSession.closeAllChatSessions();
        return;
      }
      Log.w("talk", "[BuddyList] closeAllChats: mImSession is null");
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("talk", "[BuddyList] closeAllChats: caught ", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */