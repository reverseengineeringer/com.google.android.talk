package com.google.android.videochat.util;

import android.content.ContentResolver;
import android.content.Context;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.google.android.gsf.Gservices;

public class WifiPolicyUtil
{
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
 * Qualified Name:     com.google.android.videochat.util.WifiPolicyUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */