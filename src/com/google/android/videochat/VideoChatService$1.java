package com.google.android.videochat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;

class VideoChatService$1
  extends BroadcastReceiver
{
  VideoChatService$1(VideoChatService paramVideoChatService) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getStringExtra("JINGLE_INFO_STANZA");
    if ((VideoChatService.access$000(this$0) != null) && (!TextUtils.isEmpty(paramContext)))
    {
      VideoChatService.access$000(this$0).handleJingleInfoStanza(paramContext);
      return;
    }
    Log.e("vclib:VideoChatService", "Can't process new jingle ifo stanza because mCallManager = " + VideoChatService.access$000(this$0) + ", payload = " + paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.VideoChatService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */