package com.google.android.apps.hangouts.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class SmsDeliverReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!SmsReceiver.a(paramIntent)) {
      RealTimeChatService.d(paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.sms.SmsDeliverReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */