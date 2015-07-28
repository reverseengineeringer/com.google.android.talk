package com.google.android.talk.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gtalkservice.IImSession;

class BuddyListFragment$9
  implements DialogInterface.OnClickListener
{
  BuddyListFragment$9(BuddyListFragment paramBuddyListFragment, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((paramInt == -1) && (val$username != null)) {}
    try
    {
      this$0.mImSession.removeContact(val$username);
      return;
    }
    catch (RemoteException paramDialogInterface)
    {
      Log.e("talk", "removeContact caught " + paramDialogInterface);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */