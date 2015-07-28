package com.google.android.talk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class McsConnectionStartedReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("com.google.android.talk.MCS_CONNECTION_SERVICE_STARTED")) {
      paramContext.startService(new Intent(paramContext, McsConnectionStartedService.class));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.McsConnectionStartedReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */