package com.google.android.videochat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.util.Log;
import com.google.android.videochat.util.LogUtil;
import com.google.android.videochat.util.WifiPolicyUtil;

class CallManager$WifiStateReceiver
  extends BroadcastReceiver
{
  private boolean mConnected = true;
  
  private CallManager$WifiStateReceiver(CallManager paramCallManager) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!this$0.isInOrInitiatingCall()) {}
    do
    {
      do
      {
        return;
      } while ((!paramIntent.getAction().equals("android.net.wifi.supplicant.STATE_CHANGE")) && (!paramIntent.getAction().equals("android.net.wifi.supplicant.CONNECTION_CHANGE")));
      if (WifiPolicyUtil.wifiConnected(paramContext))
      {
        mConnected = true;
        LogUtil.LOGV("vclib:CallManager", "wifi connected.");
        return;
      }
      LogUtil.LOGV("vclib:CallManager", "lost wifi connection");
    } while (!mConnected);
    Log.i("vclib:CallManager", "We lost our wifi connection. Give it some time to recover then  terminate the call if it can't.");
    mConnected = false;
    CallManager.access$900(this$0).postDelayed(new Runnable()
    {
      public void run()
      {
        if (!mConnected)
        {
          Log.i("vclib:CallManager", "We still don't have a wifi connection after 1 seconds. Terminate the call");
          CallManager.access$1400(this$0);
        }
      }
    }, 1000L);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallManager.WifiStateReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */