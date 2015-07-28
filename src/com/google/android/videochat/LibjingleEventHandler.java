package com.google.android.videochat;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.videochat.util.LogUtil;

class LibjingleEventHandler
  extends Handler
{
  private LibjingleEventCallback mCallback;
  
  static
  {
    if (!LibjingleEventHandler.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public LibjingleEventHandler() {}
  
  public LibjingleEventHandler(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  private void log(String paramString)
  {
    Log.d("vclib:LibjingleEventHandler", "[libjingleHandler] " + paramString);
  }
  
  public void handleMessage(Message paramMessage)
  {
    assert (mCallback != null);
    Object localObject = paramMessage.getData();
    switch (what)
    {
    default: 
      LogUtil.Logwtf("vclib:LibjingleEventHandler", "Unknown message type " + what);
      return;
    case 0: 
      paramMessage = ((Bundle)localObject).getString("str1");
      localObject = ((Bundle)localObject).getString("str2");
      mCallback.handleOutgoingCallSignalingStanza(paramMessage, (String)localObject);
      return;
    case 1: 
      int i = arg1;
      int j = arg2;
      paramMessage = ((Bundle)localObject).getString("str1");
      localObject = ((Bundle)localObject).getString("str2");
      log("handleMessage(CALL_STATE_CHANGED): for sessionId: " + (String)localObject + " new state=" + i);
      mCallback.handleCallStateChanged((String)localObject, i, j, paramMessage);
      return;
    case 2: 
      mCallback.handleStatsUpdate((Stats)obj);
      return;
    case 3: 
      mCallback.handleMediaSourcesUpdate((MediaSources)obj);
      return;
    }
    mCallback.handleLoudestSpeakerUpdate(arg1);
  }
  
  public void setCallback(LibjingleEventCallback paramLibjingleEventCallback)
  {
    mCallback = paramLibjingleEventCallback;
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.LibjingleEventHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */