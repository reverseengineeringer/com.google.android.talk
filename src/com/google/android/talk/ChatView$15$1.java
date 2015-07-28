package com.google.android.talk;

import com.google.android.talk.videochat.CallTaskDispatcher.CallTask;
import com.google.android.videochat.CallSession;
import com.google.android.videochat.CallSession.AudioDevice;

class ChatView$15$1
  implements CallTaskDispatcher.CallTask
{
  ChatView$15$1(ChatView.15 param15) {}
  
  public void runTask(CallSession paramCallSession)
  {
    switch (ChatView.23.$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState[ChatView.access$7200(this$1.this$0).getAudioDeviceState().ordinal()])
    {
    default: 
      paramCallSession.setAudioDevice(CallSession.AudioDevice.BLUETOOTH_HEADSET);
    case 2: 
    case 3: 
      return;
    }
    paramCallSession.setAudioDevice(CallSession.AudioDevice.SPEAKERPHONE);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.15.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */