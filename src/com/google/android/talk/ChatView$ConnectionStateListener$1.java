package com.google.android.talk;

import android.widget.ListView;
import com.google.android.gtalkservice.ConnectionError;
import com.google.android.gtalkservice.ConnectionState;
import com.google.android.talk.fragments.ChatScreenFragment.ChatHost;

class ChatView$ConnectionStateListener$1
  implements Runnable
{
  ChatView$ConnectionStateListener$1(ChatView.ConnectionStateListener paramConnectionStateListener, ConnectionState paramConnectionState, ConnectionError paramConnectionError, ChatView paramChatView) {}
  
  public void run()
  {
    if (ChatView.ConnectionStateListener.access$6500(this$0) == null) {
      return;
    }
    switch (val$state.getState())
    {
    }
    for (;;)
    {
      ChatView.access$3600(val$cv).invalidateViews();
      ChatView.access$1300(val$cv);
      ChatView.access$3300(val$cv);
      return;
      if ((val$error != null) && (val$error.getError() == 9))
      {
        ChatView.access$000(val$cv, "Session terminated, invalidate IM sessions");
        ChatView.access$6600(val$cv);
        ChatView.access$3500(val$cv).invalidateImSession();
        val$cv.addInvitationListener();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.ConnectionStateListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */