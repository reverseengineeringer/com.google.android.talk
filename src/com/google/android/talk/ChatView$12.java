package com.google.android.talk;

import com.google.android.talk.videochat.CallTaskDispatcher.CallTask;
import com.google.android.videochat.CallSession;

class ChatView$12
  implements CallTaskDispatcher.CallTask
{
  ChatView$12(ChatView paramChatView) {}
  
  public void runTask(CallSession paramCallSession)
  {
    paramCallSession.terminateCall(this$0.getBestAvailableJid());
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */