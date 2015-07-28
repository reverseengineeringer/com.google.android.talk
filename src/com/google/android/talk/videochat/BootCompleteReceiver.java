package com.google.android.talk.videochat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.talk.TalkApp;

public class BootCompleteReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((!paramIntent.getAction().equals("android.intent.action.BOOT_COMPLETED")) || (TalkApp.isDisallowedUser(paramContext))) {
      return;
    }
    Intent localIntent = new Intent(paramContext, RefreshCameraStateProcessorService.class);
    localIntent.putExtra("android.intent.extra.INTENT", paramIntent);
    paramContext.startService(localIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.BootCompleteReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */