package com.google.android.apps.hangouts.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import cwo;
import ilh;

public final class NetworkConnectivityChangeReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
      ((cwo)ilh.a(paramContext, cwo.class)).a(paramContext, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.service.NetworkConnectivityChangeReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */