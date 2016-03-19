package com.google.android.apps.hangouts.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public class MmsWapPushDeliverReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (("android.provider.Telephony.WAP_PUSH_DELIVER".equals(paramIntent.getAction())) && ("application/vnd.wap.mms-message".equals(paramIntent.getType()))) {
      RealTimeChatService.a(paramIntent.getByteArrayExtra("data"));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.sms.MmsWapPushDeliverReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */