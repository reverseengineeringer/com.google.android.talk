package com.google.android.talk.fragments;

import android.os.RemoteException;
import com.google.android.gtalkservice.IChatSession;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import com.google.android.talk.util.ChatList;

class ChatScreenFragment$GroupChatConverted$1
  implements Runnable
{
  ChatScreenFragment$GroupChatConverted$1(ChatScreenFragment.GroupChatConverted paramGroupChatConverted, IGTalkService paramIGTalkService, long paramLong, String paramString1, ChatScreenFragment paramChatScreenFragment, String paramString2) {}
  
  public void run()
  {
    try
    {
      IChatSession localIChatSession = val$service.getImSessionForAccountId(val$accountId).getChatSession(val$oldJid);
      if (localIChatSession != null) {
        localIChatSession.leave();
      }
    }
    catch (RemoteException localRemoteException)
    {
      for (;;) {}
    }
    ChatScreenFragment.access$700(val$fragment).resumeRequery();
    ChatScreenFragment.access$1800(val$fragment, val$groupChatRoom, val$accountId);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.GroupChatConverted.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */