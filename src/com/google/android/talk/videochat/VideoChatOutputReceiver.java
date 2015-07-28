package com.google.android.talk.videochat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class VideoChatOutputReceiver
  extends BroadcastReceiver
{
  private void handleCallEnded(Context paramContext, Intent paramIntent)
  {
    paramIntent.setAction("com.google.android.talk.CANCEL_NOTIFICATION");
    paramIntent.setComponent(null);
    paramContext.sendBroadcast(paramIntent);
  }
  
  private void handleCallInProgress(Context paramContext, Intent paramIntent)
  {
    postToProcessingService(paramContext, paramIntent);
  }
  
  private void handleIncomingCallIntent(Context paramContext, Intent paramIntent)
  {
    paramIntent.setAction("com.google.android.talk.POST_NOTIFICATION");
    paramIntent.setClass(paramContext, NotificationReceiver.class);
    paramContext.sendBroadcast(paramIntent);
  }
  
  private void handleOutgoingStanzaIntent(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("type", -1);
    String str = paramIntent.getStringExtra("local_bare_jid");
    paramIntent = paramIntent.getStringExtra("stanza");
    if (str == null)
    {
      Log.e("Talk:OutgoingStanzaReceiver", "Intent must contain localBareJid");
      return;
    }
    if (paramIntent == null)
    {
      Log.e("Talk:OutgoingStanzaReceiver", "Intent must contain payload");
      return;
    }
    switch (i)
    {
    case 1: 
    default: 
      Log.e("Talk:OutgoingStanzaReceiver", "Intent must specify a valid stanza type");
      return;
    case 0: 
      JingleStanzaSender.sendCallSignalingMessage(paramContext, str, paramIntent);
      return;
    }
    JingleStanzaSender.sendCallPerfStatsStanza(paramContext, str, paramIntent);
  }
  
  private void postToProcessingService(Context paramContext, Intent paramIntent)
  {
    paramIntent.setClass(paramContext, VideoChatOutputProcessingService.class);
    paramContext.startService(paramIntent);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("com.google.android.videochat.ACTION_OUTGOING_STANZA".equals(str)) {
      handleOutgoingStanzaIntent(paramContext, paramIntent);
    }
    do
    {
      return;
      if ("com.google.android.videochat.ACTION_INCOMING_CALL".equals(str))
      {
        handleIncomingCallIntent(paramContext, paramIntent);
        return;
      }
      if ("com.google.android.videochat.ACTION_MISSED_CALL".equals(str))
      {
        postToProcessingService(paramContext, paramIntent);
        return;
      }
      if ("com.google.android.videochat.ACTION_END_CAUSE".equals(str))
      {
        postToProcessingService(paramContext, paramIntent);
        return;
      }
      if ("com.google.android.videochat.ACTION_CALL_IN_PROGRESS".equals(str))
      {
        handleCallInProgress(paramContext, paramIntent);
        return;
      }
    } while (!"com.google.android.videochat.ACTION_CALL_ENDED".equals(str));
    handleCallEnded(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatOutputReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */