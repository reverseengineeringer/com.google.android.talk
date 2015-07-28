package com.google.android.talk;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;

public class MultiUserErrorActivity
  extends Activity
{
  private void showMultiUserErrorDialog()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setMessage(getResources().getString(2131493132)).setCancelable(false).setPositiveButton(getResources().getString(2131492965), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        finish();
      }
    });
    localBuilder.create().show();
  }
  
  public static void startMultiUserErrorActivity(Activity paramActivity)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramActivity, MultiUserErrorActivity.class);
    localIntent.setFlags(536870912);
    paramActivity.startActivity(localIntent);
    paramActivity.finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    showMultiUserErrorDialog();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.MultiUserErrorActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */