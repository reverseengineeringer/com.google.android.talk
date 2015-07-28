package com.google.android.talk.videochat;

import android.content.Context;
import com.google.android.videochat.CallState;
import com.google.android.videochat.CallStateClient;

class RingerService$RingerCallStateClient
  extends CallStateClient
{
  public RingerService$RingerCallStateClient(RingerService paramRingerService, Context paramContext)
  {
    super(paramContext);
  }
  
  public void onCallStateUpdate(String paramString, CallState paramCallState, boolean paramBoolean, Object paramObject)
  {
    if (paramCallState != null) {
      switch (libjingleCallState)
      {
      }
    }
    do
    {
      return;
    } while (!paramString.equals(RingerService.access$000(this$0)));
    RingerService.forceStopRinger(this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.RingerService.RingerCallStateClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */