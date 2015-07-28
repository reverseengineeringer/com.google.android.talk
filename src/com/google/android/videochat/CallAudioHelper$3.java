package com.google.android.videochat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Set;

class CallAudioHelper$3
  extends BroadcastReceiver
{
  CallAudioHelper$3(CallAudioHelper paramCallAudioHelper) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i;
    if (paramIntent.getAction().equals("android.intent.action.HEADSET_PLUG"))
    {
      i = paramIntent.getIntExtra("state", 0);
      CallAudioHelper.access$100(this$0, "WiredHeadsetReceiver.onReceive: state=" + i + ", isInitialStickyBroadcast=" + isInitialStickyBroadcast());
    }
    switch (i)
    {
    default: 
      return;
    case 0: 
      CallAudioHelper.access$400(this$0).remove(CallSession.AudioDevice.WIRED_HEADSET);
      if (CallAudioHelper.access$800(this$0)) {
        CallAudioHelper.access$400(this$0).add(CallSession.AudioDevice.EARPIECE);
      }
      if (CallAudioHelper.access$200(this$0) == CallState.AudioDeviceState.WIRED_HEADSET_ON)
      {
        this$0.setAudioDevice(CallSession.AudioDevice.SPEAKERPHONE);
        return;
      }
      CallAudioHelper.access$500(this$0);
      return;
    }
    CallAudioHelper.access$400(this$0).add(CallSession.AudioDevice.WIRED_HEADSET);
    CallAudioHelper.access$400(this$0).remove(CallSession.AudioDevice.EARPIECE);
    this$0.setAudioDevice(CallSession.AudioDevice.WIRED_HEADSET);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallAudioHelper.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */