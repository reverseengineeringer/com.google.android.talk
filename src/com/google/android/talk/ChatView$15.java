package com.google.android.talk;

import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.talk.videochat.CallTaskDispatcher;
import com.google.android.talk.videochat.CallTaskDispatcher.CallTask;
import com.google.android.videochat.CallSession;
import com.google.android.videochat.CallSession.AudioDevice;

class ChatView$15
  implements View.OnClickListener
{
  ChatView$15(ChatView paramChatView) {}
  
  public void onClick(View paramView)
  {
    ChatView.access$7300(this$0).postCallTask(new CallTaskDispatcher.CallTask()
    {
      public void runTask(CallSession paramAnonymousCallSession)
      {
        switch (ChatView.23.$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState[ChatView.access$7200(this$0).getAudioDeviceState().ordinal()])
        {
        default: 
          paramAnonymousCallSession.setAudioDevice(CallSession.AudioDevice.BLUETOOTH_HEADSET);
        case 2: 
        case 3: 
          return;
        }
        paramAnonymousCallSession.setAudioDevice(CallSession.AudioDevice.SPEAKERPHONE);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */