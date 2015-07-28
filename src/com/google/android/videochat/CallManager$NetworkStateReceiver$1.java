package com.google.android.videochat;

import android.util.Log;

class CallManager$NetworkStateReceiver$1
  implements Runnable
{
  CallManager$NetworkStateReceiver$1(CallManager.NetworkStateReceiver paramNetworkStateReceiver) {}
  
  public void run()
  {
    if (!CallManager.NetworkStateReceiver.access$1300(this$1))
    {
      Log.i("vclib:CallManager", "We still don't have a connection after 5 seconds. Terminate the call");
      CallManager.access$1400(this$1.this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallManager.NetworkStateReceiver.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */