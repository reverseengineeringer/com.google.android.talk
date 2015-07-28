package com.google.android.talk;

import com.google.android.talk.videochat.CallTaskDispatcher.CallTask;
import com.google.android.videochat.CallSession;
import com.google.android.videochat.CallSession.AudioDevice;

class ChatView$22
  implements CallTaskDispatcher.CallTask
{
  ChatView$22(ChatView paramChatView, CallSession.AudioDevice paramAudioDevice) {}
  
  public void runTask(CallSession paramCallSession)
  {
    paramCallSession.setAudioDevice(val$audioDeviceFinal);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */