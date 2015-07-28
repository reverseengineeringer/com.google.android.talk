package com.google.android.videochat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.os.Handler;
import android.util.Log;
import com.google.android.videochat.util.LogUtil;

class CallManager$NetworkStateReceiver
  extends BroadcastReceiver
{
  private boolean mConnected = true;
  
  private CallManager$NetworkStateReceiver(CallManager paramCallManager) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (NetworkInfo)paramIntent.getParcelableExtra("networkInfo");
    if (paramContext == null) {}
    do
    {
      do
      {
        return;
      } while (!this$0.isInOrInitiatingCall());
      if (paramContext.getState() == NetworkInfo.State.CONNECTED)
      {
        mConnected = true;
        return;
      }
      LogUtil.LOGV("vclib:CallManager", "new connection state: " + paramContext.getState());
    } while (!mConnected);
    Log.i("vclib:CallManager", "We lost our connection. Give it some time to recover then  terminate the call if it can't.");
    mConnected = false;
    CallManager.access$900(this$0).postDelayed(new Runnable()
    {
      public void run()
      {
        if (!mConnected)
        {
          Log.i("vclib:CallManager", "We still don't have a connection after 5 seconds. Terminate the call");
          CallManager.access$1400(this$0);
        }
      }
    }, 5000L);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallManager.NetworkStateReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */