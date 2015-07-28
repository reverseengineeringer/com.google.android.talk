package com.google.android.talk;

import com.google.android.talk.videochat.CallTaskDispatcher.CallTask;
import com.google.android.videochat.CallSession;

class ChatView$13
  implements CallTaskDispatcher.CallTask
{
  ChatView$13(ChatView paramChatView, boolean paramBoolean) {}
  
  public void runTask(CallSession paramCallSession)
  {
    paramCallSession.setMute(val$mutedFinal);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */