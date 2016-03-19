package com.google.android.apps.hangouts.notifications;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import ezi;
import imx;

public class CompanionReplacedReceiver
  extends BroadcastReceiver
{
  private static final boolean a = false;
  
  static
  {
    imx localimx = ezi.k;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (a)
    {
      paramContext = String.valueOf(paramIntent);
      new StringBuilder(String.valueOf(paramContext).length() + 26).append("CompanionReplacedReceiver ").append(paramContext);
    }
    paramContext = paramIntent.getData().getSchemeSpecificPart();
    if (("com.google.android.wearable.app".equals(paramContext)) || ("com.google.android.projection.gearhead".equals(paramContext)))
    {
      cww.a = false;
      cww.b = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.notifications.CompanionReplacedReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */