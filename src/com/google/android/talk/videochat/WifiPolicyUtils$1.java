package com.google.android.talk.videochat;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class WifiPolicyUtils$1
  implements DialogInterface.OnClickListener
{
  WifiPolicyUtils$1(Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.settings.WIFI_SETTINGS");
    localIntent.addFlags(268435456);
    val$context.startActivity(localIntent);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.WifiPolicyUtils.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */