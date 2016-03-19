package com.google.android.apps.hangouts.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import dvd;
import dvi;

public class MmsWapPushReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (("android.provider.Telephony.WAP_PUSH_RECEIVED".equals(paramIntent.getAction())) && ("application/vnd.wap.mms-message".equals(paramIntent.getType())))
    {
      paramContext = dvd.d;
      if (dvi.a()) {
        RealTimeChatService.a(paramIntent.getByteArrayExtra("data"));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.sms.MmsWapPushReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */