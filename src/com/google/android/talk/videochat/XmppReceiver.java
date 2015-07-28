package com.google.android.talk.videochat;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.videochat.JingleInfoManager;
import com.google.android.videochat.StanzaInjector;

public class XmppReceiver
  extends BroadcastReceiver
{
  private void logd(String paramString)
  {
    Log.d("talk", "[XmppReceiver] " + paramString);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    ComponentName localComponentName = new ComponentName(paramContext, VideoChatOutputReceiver.class);
    String str2;
    long l;
    String str3;
    if ("com.google.android.gtalkservice.intent.RECEIVE_XMPP".equals(str1))
    {
      str2 = paramIntent.getStringExtra("from");
      l = paramIntent.getLongExtra("accountId", 0L);
      str3 = paramIntent.getStringExtra("message");
      String str4 = paramIntent.getStringExtra("stanzaType");
      paramIntent = paramIntent.getStringExtra("username");
      if (Log.isLoggable("talk", 2))
      {
        logd("onReceive: intent = " + str1);
        logd("    from = " + str2);
        logd("    account_id = " + l);
        logd("    stanza_type = " + str4);
        logd("    stanza = " + str3);
      }
      if ("iq".equalsIgnoreCase(str4))
      {
        if (!JingleInfoManager.parseStanza(paramContext, str3)) {
          break label221;
        }
        JingleInfoManager.notifyNewJingleInfo(paramContext, str3);
      }
    }
    label221:
    do
    {
      return;
      StanzaInjector.injectStanza(paramContext, paramIntent, str3, localComponentName);
      return;
      if ("com.google.android.gtalkservice.intent.RECEIVE_IQ_RESPONSE".equals(str1))
      {
        str2 = paramIntent.getStringExtra("from");
        l = paramIntent.getLongExtra("accountId", 0L);
        str3 = paramIntent.getStringExtra("message");
        paramIntent = paramIntent.getStringExtra("originalStanza");
        if (Log.isLoggable("talk", 2))
        {
          logd("onReceive: intent = " + str1);
          logd("    from = " + str2);
          logd("    account_id = " + l);
          logd("    stanza = " + str3);
          logd("    original = " + paramIntent);
        }
        if (JingleInfoManager.parseStanza(paramContext, str3))
        {
          JingleInfoManager.notifyNewJingleInfo(paramContext, str3);
          return;
        }
        StanzaInjector.injectResponseStanza(paramContext, JingleStanzaSender.unwrapJingleNodeWrapper(paramIntent), str3, localComponentName);
        return;
      }
    } while ((!"com.google.android.gtalkservice.intent.SEND_XMPP_FAILED".equals(str1)) || (!Log.isLoggable("talk", 2)));
    paramContext = (Intent)paramIntent.getExtras().getParcelable("intent");
    logd("onReceive: intent = " + str1);
    logd("    originalIntent=" + paramContext);
    logd("    error = " + paramIntent.getStringExtra("error"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.XmppReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */