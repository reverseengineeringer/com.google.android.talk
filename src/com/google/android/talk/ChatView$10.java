package com.google.android.talk;

import android.content.Context;
import com.google.android.talk.videochat.CallTaskDispatcher.CallTask;
import com.google.android.talk.videochat.TalkOngoingNotificationFactory;
import com.google.android.videochat.CallSession;

class ChatView$10
  implements CallTaskDispatcher.CallTask
{
  ChatView$10(ChatView paramChatView) {}
  
  public void runTask(CallSession paramCallSession)
  {
    paramCallSession.initiateVoiceCall(this$0.getBestAvailableJid(), ChatView.access$5700(this$0), TalkOngoingNotificationFactory.getInstance(this$0.getContext().getApplicationContext()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */