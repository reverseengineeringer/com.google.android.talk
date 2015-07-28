package com.google.android.talk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class AccountLoginUtils$NoBackgroundDataDialogFragment$2
  implements DialogInterface.OnClickListener
{
  AccountLoginUtils$NoBackgroundDataDialogFragment$2(AccountLoginUtils.NoBackgroundDataDialogFragment paramNoBackgroundDataDialogFragment) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Intent("android.settings.SYNC_SETTINGS");
    paramDialogInterface.addCategory("android.intent.category.DEFAULT");
    paramDialogInterface.setFlags(524288);
    this$0.startActivityForResult(paramDialogInterface, 100);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountLoginUtils.NoBackgroundDataDialogFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */