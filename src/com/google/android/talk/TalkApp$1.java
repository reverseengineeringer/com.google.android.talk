package com.google.android.talk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class TalkApp$1
  extends BroadcastReceiver
{
  TalkApp$1(TalkApp paramTalkApp) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    TalkApp.access$000("mSettingsMonitor.onReceive: action=" + paramContext);
    if (("android.net.conn.BACKGROUND_DATA_SETTING_CHANGED".equals(paramContext)) && (this$0.isBackgroundDataEnabled())) {
      this$0.rebindService();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkApp.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */