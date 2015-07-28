package com.google.android.videochat;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.android.videochat.util.IqStanzaParser;
import com.google.android.videochat.util.JingleAndGingleStanzaParser;
import com.google.android.videochat.util.LogUtil;

public class StanzaInjector
{
  private CallManager mCallManager;
  private VideoChatService mService;
  
  StanzaInjector(VideoChatService paramVideoChatService, CallManager paramCallManager)
  {
    mService = paramVideoChatService;
    mCallManager = paramCallManager;
  }
  
  private static boolean findInBlackList(String paramString)
  {
    if ((paramString != null) && (paramString.contains("voice.google.com")))
    {
      LogUtil.LOGD("vclib:StanzaInjector", "findInBlackList: found " + paramString);
      return true;
    }
    return false;
  }
  
  public static void injectResponseStanza(Context paramContext, String paramString1, String paramString2, ComponentName paramComponentName)
  {
    Intent localIntent = new Intent(paramContext, VideoChatService.class);
    localIntent.setAction("com.google.android.videochat.ACTION_INCOMING_STANZA_RESPONSE");
    localIntent.putExtra("stanza", paramString2);
    localIntent.putExtra("original_stanza", paramString1);
    localIntent.putExtra("output_receiver", paramComponentName);
    paramContext.startService(localIntent);
  }
  
  public static void injectStanza(Context paramContext, String paramString1, String paramString2, ComponentName paramComponentName)
  {
    if (findInBlackList(IqStanzaParsermFrom)) {
      return;
    }
    Intent localIntent = new Intent(paramContext, VideoChatService.class);
    localIntent.setAction("com.google.android.videochat.ACTION_INCOMING_STANZA");
    localIntent.putExtra("stanza", paramString2);
    localIntent.putExtra("output_receiver", paramComponentName);
    localIntent.putExtra("local_bare_jid", paramString1);
    paramContext.startService(localIntent);
  }
  
  void injectResponseStanza(String paramString1, String paramString2)
  {
    Log.i("vclib:StanzaInjector", "injectResponseStanza");
    if (paramString1 == null)
    {
      Log.e("vclib:StanzaInjector", "Can't process incoming response: original stanza not specified");
      return;
    }
    IqStanzaParser localIqStanzaParser = new IqStanzaParser(paramString2);
    if (!localIqStanzaParser.isValid())
    {
      Log.e("vclib:StanzaInjector", "Can't process incoming response: Not a valid iq stanza: " + paramString2);
      return;
    }
    if (LogUtil.getTalkLogLevel() <= 3) {
      Log.d("vclib:StanzaInjector", "handleMessageResponseFromIntent, remoteJid=" + mFrom);
    }
    for (;;)
    {
      mCallManager.handleMessageResponse(paramString1, paramString2);
      mService.postStopServiceIfSafe();
      return;
      Log.i("vclib:StanzaInjector", "handleMessageResponseFromIntent");
    }
  }
  
  void injectStanza(String paramString1, String paramString2)
  {
    Object localObject = new IqStanzaParser(paramString1);
    if (!((IqStanzaParser)localObject).isValid())
    {
      Log.e("vclib:StanzaInjector", "Can't process incoming stanza: Not a valid iq stanza: " + paramString1);
      return;
    }
    localObject = mFrom;
    JingleAndGingleStanzaParser localJingleAndGingleStanzaParser = new JingleAndGingleStanzaParser(paramString1);
    if (!localJingleAndGingleStanzaParser.isValidJingleOrGingleStanza())
    {
      Log.e("vclib:StanzaInjector", "Can't process incoming stanza: Not a valid session stanza: " + paramString1);
      return;
    }
    if (LogUtil.getTalkLogLevel() <= 3) {
      Log.d("vclib:StanzaInjector", "inject stanza, remoteJid=" + (String)localObject);
    }
    for (;;)
    {
      if ((mCallManager.handleIncomingMessage((String)localObject, paramString2, localJingleAndGingleStanzaParser)) && (localJingleAndGingleStanzaParser.isTypeInitiate())) {
        mService.onNewCallStarting((String)localObject, paramString2);
      }
      if (localJingleAndGingleStanzaParser.isTypeInitiate()) {
        break;
      }
      mService.postStopServiceIfSafe();
      return;
      Log.i("vclib:StanzaInjector", "inject stanza");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.StanzaInjector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */