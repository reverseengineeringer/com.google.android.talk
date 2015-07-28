package com.google.android.videochat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import java.util.Set;

class CallAudioHelper$2
  extends BroadcastReceiver
{
  CallAudioHelper$2(CallAudioHelper paramCallAudioHelper) {}
  
  private void onBluetoothDisconnected()
  {
    if ((CallAudioHelper.access$200(this$0) == CallState.AudioDeviceState.BLUETOOTH_ON) || (CallAudioHelper.access$200(this$0) == CallState.AudioDeviceState.BLUETOOTH_TURNING_ON) || (CallAudioHelper.access$200(this$0) == CallState.AudioDeviceState.BLUETOOTH_TURNING_OFF)) {
      CallAudioHelper.access$700(this$0);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    int i;
    if (paramContext.equals("android.media.SCO_AUDIO_STATE_CHANGED"))
    {
      i = paramIntent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", 0);
      CallAudioHelper.access$100(this$0, "BluetoothReceiver.onReceive: got ACTION_SCO_AUDIO_STATE_CHANGED, audioState=" + i + ", isInitialSticky=" + isInitialStickyBroadcast());
      if (i == 1) {
        if (CallAudioHelper.access$200(this$0) != CallState.AudioDeviceState.BLUETOOTH_ON)
        {
          CallAudioHelper.access$202(this$0, CallState.AudioDeviceState.BLUETOOTH_ON);
          CallAudioHelper.access$300(this$0);
          CallAudioHelper.access$400(this$0).add(CallSession.AudioDevice.BLUETOOTH_HEADSET);
          CallAudioHelper.access$500(this$0);
        }
      }
    }
    do
    {
      do
      {
        do
        {
          return;
        } while ((i != 0) || (isInitialStickyBroadcast()));
        CallAudioHelper.access$300(this$0);
        onBluetoothDisconnected();
        CallAudioHelper.access$500(this$0);
        return;
        if (!paramContext.equals("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED")) {
          break;
        }
        i = paramIntent.getIntExtra("android.bluetooth.profile.extra.STATE", 0);
        CallAudioHelper.access$100(this$0, "BluetoothReceiver.onReceive: got ACTION_CONNECTION_STATE_CHANGED, profileState=" + i + ", isInitialSticky=" + isInitialStickyBroadcast());
        switch (i)
        {
        case 1: 
        default: 
          return;
        }
      } while (!CallAudioHelper.access$400(this$0).contains(CallSession.AudioDevice.BLUETOOTH_HEADSET));
      CallAudioHelper.access$600(this$0).stopBluetoothSco();
      CallAudioHelper.access$300(this$0);
      CallAudioHelper.access$400(this$0).remove(CallSession.AudioDevice.BLUETOOTH_HEADSET);
      onBluetoothDisconnected();
      CallAudioHelper.access$500(this$0);
      return;
    } while (CallAudioHelper.access$400(this$0).contains(CallSession.AudioDevice.BLUETOOTH_HEADSET));
    CallAudioHelper.access$400(this$0).add(CallSession.AudioDevice.BLUETOOTH_HEADSET);
    CallAudioHelper.access$500(this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallAudioHelper.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */