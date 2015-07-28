package com.google.android.videochat;

import android.net.wifi.SupplicantState;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager.WifiLock;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;

class CallManager$2
  implements Runnable
{
  CallManager$2(CallManager paramCallManager, String paramString1, String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2, CallState paramCallState) {}
  
  public void run()
  {
    if (!CallManager.access$300(this$0, val$sessionId))
    {
      CallManager.access$400(this$0).release();
      Log.i("vclib:CallManager", "Incoming call no longer waiting for accept. Give up trying to connect to wifi.");
      return;
    }
    if (CallManager.access$500(this$0).getConnectionInfo().getSupplicantState() != SupplicantState.COMPLETED)
    {
      Log.i("vclib:CallManager", "Wi-Fi doesn't have a connection. Retrying...");
      if (SystemClock.uptimeMillis() < CallManager.access$600(this$0) + CallManager.access$700())
      {
        CallManager.access$900(this$0).postDelayed(this, CallManager.access$800());
        return;
      }
      CallManager.access$400(this$0).release();
      CallManager.access$1000(this$0);
      CallManager.access$1100(this$0, val$sessionId, val$remoteJid, val$localBareJid, val$isVideo, true);
      Log.i("vclib:CallManager", "Couldn't get wifi connection. Declining new call");
      return;
    }
    CallManager.access$602(this$0, -1L);
    CallManager.access$1000(this$0);
    CallManager.access$1200(this$0, val$sessionId, val$remoteJid, val$localBareJid, val$isVideo, val$isSecure, val$existingCall);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallManager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */