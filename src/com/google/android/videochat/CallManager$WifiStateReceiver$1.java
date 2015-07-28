package com.google.android.videochat;

import android.util.Log;

class CallManager$WifiStateReceiver$1
  implements Runnable
{
  CallManager$WifiStateReceiver$1(CallManager.WifiStateReceiver paramWifiStateReceiver) {}
  
  public void run()
  {
    if (!CallManager.WifiStateReceiver.access$1500(this$1))
    {
      Log.i("vclib:CallManager", "We still don't have a wifi connection after 1 seconds. Terminate the call");
      CallManager.access$1400(this$1.this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallManager.WifiStateReceiver.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */