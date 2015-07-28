package com.google.android.talk.fragments;

import android.app.Activity;
import com.google.android.talk.ChatView;
import com.google.android.videochat.CallState;

class ChatScreenFragment$11$2
  implements Runnable
{
  ChatScreenFragment$11$2(ChatScreenFragment.11 param11, String paramString, CallState paramCallState, boolean paramBoolean, Object paramObject) {}
  
  public void run()
  {
    ChatView localChatView = ChatScreenFragment.access$1600(this$1.this$0);
    if (localChatView != null) {
      localChatView.onCallStateUpdate(val$remoteBareJid, val$callState, val$requestReply, val$callbackParam);
    }
    ChatScreenFragment.access$200(this$1.this$0).invalidateOptionsMenu();
    ChatScreenFragment.access$3002(this$1.this$0, val$callState.availableAudioDevices);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.11.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */