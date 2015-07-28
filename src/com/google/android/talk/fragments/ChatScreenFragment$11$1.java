package com.google.android.talk.fragments;

import android.app.Activity;
import com.google.android.talk.ChatView;
import com.google.android.videochat.CallState;
import com.google.android.videochat.CallState.AudioDeviceState;
import java.util.HashSet;

class ChatScreenFragment$11$1
  implements Runnable
{
  ChatScreenFragment$11$1(ChatScreenFragment.11 param11) {}
  
  public void run()
  {
    ChatView localChatView = ChatScreenFragment.access$1600(this$1.this$0);
    if (localChatView != null)
    {
      String str = localChatView.getContact();
      localChatView.onCallStateUpdate(str, new CallState(str, 13, false, false, false, CallState.AudioDeviceState.SPEAKERPHONE_ON, new HashSet()), false, null);
    }
    ChatScreenFragment.access$200(this$1.this$0).invalidateOptionsMenu();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.11.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */