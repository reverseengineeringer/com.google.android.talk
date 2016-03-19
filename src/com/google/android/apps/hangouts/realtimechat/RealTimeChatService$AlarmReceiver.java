package com.google.android.apps.hangouts.realtimechat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class RealTimeChatService$AlarmReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (RealTimeChatService.a)
    {
      paramContext = String.valueOf(paramIntent);
      String str1 = String.valueOf(paramIntent.getAction());
      String str2 = String.valueOf(RealTimeChatService.g(paramIntent.getIntExtra("op", 0)));
      new StringBuilder(String.valueOf(paramContext).length() + 34 + String.valueOf(str1).length() + String.valueOf(str2).length()).append("AlarmReceiver.onReceive ").append(paramContext).append(" ").append(str1).append(" opcode: ").append(str2);
    }
    RealTimeChatService.b(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.realtimechat.RealTimeChatService.AlarmReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */