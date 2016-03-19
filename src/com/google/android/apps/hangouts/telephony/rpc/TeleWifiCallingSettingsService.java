package com.google.android.apps.hangouts.telephony.rpc;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import evl;
import ezi;

public class TeleWifiCallingSettingsService
  extends Service
{
  private evl a;
  
  public IBinder onBind(Intent paramIntent)
  {
    if (!"com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService".equals(paramIntent.getAction()))
    {
      ezi.e("Babel_telephony", "Unknown binding action; ignoring", new Object[0]);
      return null;
    }
    return a;
  }
  
  public void onCreate()
  {
    super.onCreate();
    a = new evl(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.telephony.rpc.TeleWifiCallingSettingsService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */