package com.google.android.talk.fragments;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import com.google.android.talk.TalkApp;

class BlockedListFragment$MyAlertDialogFragment
  extends DialogFragment
{
  public BlockedListFragment$MyAlertDialogFragment(BlockedListFragment paramBlockedListFragment, int paramInt)
  {
    paramBlockedListFragment = new Bundle();
    paramBlockedListFragment.putInt("id", paramInt);
    setArguments(paramBlockedListFragment);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    switch (getArguments().getInt("id"))
    {
    default: 
      return null;
    }
    new AlertDialog.Builder(getActivity()).setMessage(String.format(BlockedListFragment.access$700(this$0), new Object[] { BlockedListFragment.access$800(this$0) })).setNegativeButton(2131492907, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    }).setPositiveButton(2131492906, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        try
        {
          BlockedListFragment.access$500(this$0).getGTalkService().getImSessionForAccountId(BlockedListFragment.access$200(this$0)).clearContactFlags(BlockedListFragment.access$600(this$0));
          return;
        }
        catch (RemoteException paramAnonymousDialogInterface) {}
      }
    }).create();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BlockedListFragment.MyAlertDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */