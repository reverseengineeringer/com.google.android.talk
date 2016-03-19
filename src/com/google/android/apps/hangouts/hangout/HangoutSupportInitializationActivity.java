package com.google.android.apps.hangouts.hangout;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import bfd;
import cbr;
import cfc;
import cgs;
import dvd;
import hbs;

public final class HangoutSupportInitializationActivity
  extends cbr
  implements DialogInterface.OnClickListener
{
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (cfc.a().c())
    {
      paramBundle = getIntent();
      paramBundle.setClass(this, HangoutActivity.class);
      paramBundle.putExtra("account_id", dvd.a(((cgs)getIntent().getParcelableExtra("hangout_room_info")).a(), null).g());
      startActivity(paramBundle);
      finish();
      return;
    }
    ((cgs)getIntent().getParcelableExtra("hangout_room_info")).s();
    if (getPackageManager().hasSystemFeature("android.hardware.microphone")) {}
    for (int i = StressMode.ef;; i = StressMode.eg)
    {
      paramBundle = new AlertDialog.Builder(this);
      paramBundle.setMessage(getString(i));
      paramBundle.setPositiveButton(StressMode.gZ, this);
      paramBundle.setCancelable(false);
      paramBundle.show();
      return;
    }
  }
  
  public Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    hbs.a(Integer.valueOf(paramInt), Integer.valueOf(0));
    paramBundle = new ProgressDialog(this);
    paramBundle.setMessage(getString(StressMode.fe));
    paramBundle.setProgressStyle(0);
    paramBundle.setCancelable(false);
    return paramBundle;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.HangoutSupportInitializationActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */