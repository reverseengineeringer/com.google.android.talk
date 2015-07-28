package com.google.android.talk.fragments;

import android.os.RemoteException;
import com.google.android.gtalkservice.IChatSession;
import com.google.android.talk.util.ChatList;

class ChatScreenFragment$15
  implements Runnable
{
  ChatScreenFragment$15(ChatScreenFragment paramChatScreenFragment, String paramString1, long paramLong, String paramString2) {}
  
  public void run()
  {
    IChatSession localIChatSession = ChatScreenFragment.access$500(this$0, val$contact, val$accountId, false);
    if (localIChatSession != null) {}
    try
    {
      if (!localIChatSession.isGroupChat())
      {
        ChatScreenFragment.access$3102(this$0, true);
        localIChatSession.addRemoteChatListener(new ChatScreenFragment.GroupChatConverted(this$0, this$0.getActivity(), localIChatSession, val$accountId));
        ChatScreenFragment.access$700(this$0).suspendRequery();
      }
      localIChatSession.inviteContact(val$invitee);
      return;
    }
    catch (RemoteException localRemoteException) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */