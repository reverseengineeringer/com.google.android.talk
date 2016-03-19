package com.google.android.apps.hangouts.realtimechat;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import fu;

public class MessagesAvailableReceiver
  extends fu
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent.putExtra("timestamp", SystemClock.elapsedRealtime() * 1000L);
    paramIntent.setClass(paramContext, GcmIntentService.class);
    a(paramContext, paramIntent);
    setResultCode(-1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.realtimechat.MessagesAvailableReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */