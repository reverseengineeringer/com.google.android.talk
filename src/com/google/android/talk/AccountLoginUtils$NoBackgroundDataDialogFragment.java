package com.google.android.talk;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;

public class AccountLoginUtils$NoBackgroundDataDialogFragment
  extends DialogFragment
{
  public void onCancel(DialogInterface paramDialogInterface)
  {
    paramDialogInterface = getActivity();
    paramDialogInterface.setResult(0);
    paramDialogInterface.finish();
  }
  
  public Dialog onCreateDialog(final Bundle paramBundle)
  {
    paramBundle = getActivity();
    new AlertDialog.Builder(paramBundle).setTitle(2131492952).setIconAttribute(16843605).setMessage(2131492953).setCancelable(true).setPositiveButton(2131492954, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = new Intent("android.settings.SYNC_SETTINGS");
        paramAnonymousDialogInterface.addCategory("android.intent.category.DEFAULT");
        paramAnonymousDialogInterface.setFlags(524288);
        startActivityForResult(paramAnonymousDialogInterface, 100);
      }
    }).setNegativeButton(2131492955, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramBundle.setResult(0);
        paramBundle.finish();
      }
    }).create();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountLoginUtils.NoBackgroundDataDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */