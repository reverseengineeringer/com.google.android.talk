package com.google.android.apps.hangouts.service;

import aal;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import bdp;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.requestwriter.RequestWriter;
import dzf;
import ilh;

public class GcmStateReceiver
  extends BroadcastReceiver
{
  public static volatile boolean a = true;
  
  private static void a(boolean paramBoolean, Context paramContext)
  {
    if ((((bdp)ilh.a(paramContext, bdp.class)).a("babel_gcm_change_notification", false)) && (paramBoolean != a))
    {
      RealTimeChatService.i.post(new dzf());
      a = paramBoolean;
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getAction();
    if (paramIntent.equals("com.google.android.gcm.CONNECTED")) {
      a(true, paramContext);
    }
    for (;;)
    {
      if (((paramIntent.equals("android.intent.action.GTALK_CONNECTED")) || (paramIntent.equals("com.google.android.gcm.CONNECTED"))) && (RequestWriter.g)) {
        aal.oJ.startService(RequestWriter.k());
      }
      return;
      if (paramIntent.equals("com.google.android.gcm.DISCONNECTED")) {
        a(false, paramContext);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.service.GcmStateReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */