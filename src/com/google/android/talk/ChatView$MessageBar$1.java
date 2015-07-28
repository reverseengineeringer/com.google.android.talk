package com.google.android.talk;

import com.google.android.videochat.CallState.AudioDeviceState;
import java.util.Set;

class ChatView$MessageBar$1
  implements Runnable
{
  ChatView$MessageBar$1(ChatView.MessageBar paramMessageBar, ChatView.VideoChatState paramVideoChatState, CallState.AudioDeviceState paramAudioDeviceState, Set paramSet, boolean paramBoolean) {}
  
  public void run()
  {
    if ((this$1.mMessageBarState != val$state) || (this$1.mAudioDeviceState != val$audioDeviceState) || (!this$1.mAudioDevices.equals(val$audioDevices)) || (val$forceUpdate))
    {
      if (TalkApp.debugLoggable()) {
        ChatView.access$000(this$1.this$0, "setMessageBarState: force=" + val$forceUpdate + ", old=" + this$1.mMessageBarState + ", new=" + val$state + ", oldBT=" + this$1.mAudioDeviceState + ", newBT=" + val$audioDeviceState);
      }
      this$1.mMessageBarState = val$state;
      this$1.mAudioDeviceState = val$audioDeviceState;
      this$1.mAudioDevices = val$audioDevices;
      this$1.update();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.MessageBar.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */