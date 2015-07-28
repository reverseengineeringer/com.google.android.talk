package com.google.android.talk.videochat;

import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.google.android.gsf.Gservices;

public class WifiPolicyUtils
{
  public static boolean showAlertIfNoWifi(Context paramContext, boolean paramBoolean)
  {
    return showAlertIfNoWifi(paramContext, paramBoolean, null);
  }
  
  public static boolean showAlertIfNoWifi(Context paramContext, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    if (!wifiConnected(paramContext))
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
      if (paramBoolean) {}
      for (int i = 2131493090;; i = 2131493091)
      {
        localBuilder.setMessage(i);
        localBuilder.setPositiveButton(2131493092, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            Intent localIntent = new Intent("android.settings.WIFI_SETTINGS");
            localIntent.addFlags(268435456);
            val$context.startActivity(localIntent);
            paramAnonymousDialogInterface.dismiss();
          }
        });
        localBuilder.setNegativeButton(2131493093, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface.cancel();
          }
        });
        if (paramOnCancelListener != null)
        {
          localBuilder.setCancelable(true);
          localBuilder.setOnCancelListener(paramOnCancelListener);
        }
        localBuilder.show();
        return true;
      }
    }
    return false;
  }
  
  public static boolean wifiConnected(Context paramContext)
  {
    paramContext = (WifiManager)paramContext.getSystemService("wifi");
    WifiInfo localWifiInfo = paramContext.getConnectionInfo();
    return (localWifiInfo != null) && (paramContext.isWifiEnabled()) && (localWifiInfo.getSupplicantState().equals(SupplicantState.COMPLETED));
  }
  
  public static boolean wifiRequiredForVideoChat(ContentResolver paramContentResolver)
  {
    return Gservices.getBoolean(paramContentResolver, "gtalk_vc_wifi_only", false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.WifiPolicyUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */