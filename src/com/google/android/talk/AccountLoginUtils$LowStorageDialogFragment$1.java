package com.google.android.talk;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class AccountLoginUtils$LowStorageDialogFragment$1
  implements DialogInterface.OnClickListener
{
  AccountLoginUtils$LowStorageDialogFragment$1(AccountLoginUtils.LowStorageDialogFragment paramLowStorageDialogFragment, Activity paramActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    val$activity.setResult(0);
    val$activity.finish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountLoginUtils.LowStorageDialogFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */