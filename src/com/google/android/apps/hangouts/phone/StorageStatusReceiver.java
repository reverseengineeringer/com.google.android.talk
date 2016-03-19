package com.google.android.apps.hangouts.phone;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public class StorageStatusReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.DEVICE_STORAGE_LOW".equals(paramIntent.getAction())) {
      RealTimeChatService.j();
    }
    while (!"android.intent.action.DEVICE_STORAGE_OK".equals(paramIntent.getAction())) {
      return;
    }
    RealTimeChatService.k();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.StorageStatusReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */