package com.google.android.talk.fragments;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import com.google.android.talk.ChatView;
import com.google.android.videochat.CallState;
import com.google.android.videochat.CallState.AudioDeviceState;
import com.google.android.videochat.CallStateClient;
import java.util.HashSet;

class ChatScreenFragment$11
  extends CallStateClient
{
  ChatScreenFragment$11(ChatScreenFragment paramChatScreenFragment, Context paramContext)
  {
    super(paramContext);
  }
  
  public void onCallStateUpdate(final String paramString, final CallState paramCallState, final boolean paramBoolean, final Object paramObject)
  {
    ChatScreenFragment.access$2900(this$0).post(new Runnable()
    {
      public void run()
      {
        ChatView localChatView = ChatScreenFragment.access$1600(this$0);
        if (localChatView != null) {
          localChatView.onCallStateUpdate(paramString, paramCallState, paramBoolean, paramObject);
        }
        ChatScreenFragment.access$200(this$0).invalidateOptionsMenu();
        ChatScreenFragment.access$3002(this$0, paramCallStateavailableAudioDevices);
      }
    });
  }
  
  public void onDisconnected()
  {
    ChatScreenFragment.access$2900(this$0).post(new Runnable()
    {
      public void run()
      {
        ChatView localChatView = ChatScreenFragment.access$1600(this$0);
        if (localChatView != null)
        {
          String str = localChatView.getContact();
          localChatView.onCallStateUpdate(str, new CallState(str, 13, false, false, false, CallState.AudioDeviceState.SPEAKERPHONE_ON, new HashSet()), false, null);
        }
        ChatScreenFragment.access$200(this$0).invalidateOptionsMenu();
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */