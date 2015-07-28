package com.google.android.talk;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class AccountLoginUtils$NoBackgroundDataDialogFragment$1
  implements DialogInterface.OnClickListener
{
  AccountLoginUtils$NoBackgroundDataDialogFragment$1(AccountLoginUtils.NoBackgroundDataDialogFragment paramNoBackgroundDataDialogFragment, Activity paramActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    val$activity.setResult(0);
    val$activity.finish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountLoginUtils.NoBackgroundDataDialogFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */