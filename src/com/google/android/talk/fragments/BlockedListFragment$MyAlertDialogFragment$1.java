package com.google.android.talk.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.RemoteException;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import com.google.android.talk.TalkApp;

class BlockedListFragment$MyAlertDialogFragment$1
  implements DialogInterface.OnClickListener
{
  BlockedListFragment$MyAlertDialogFragment$1(BlockedListFragment.MyAlertDialogFragment paramMyAlertDialogFragment) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      BlockedListFragment.access$500(this$1.this$0).getGTalkService().getImSessionForAccountId(BlockedListFragment.access$200(this$1.this$0)).clearContactFlags(BlockedListFragment.access$600(this$1.this$0));
      return;
    }
    catch (RemoteException paramDialogInterface) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BlockedListFragment.MyAlertDialogFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */