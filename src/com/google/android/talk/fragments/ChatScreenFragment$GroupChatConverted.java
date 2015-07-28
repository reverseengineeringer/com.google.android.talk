package com.google.android.talk.fragments;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gtalkservice.IChatListener.Stub;
import com.google.android.gtalkservice.IChatSession;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import com.google.android.talk.util.ChatList;

class ChatScreenFragment$GroupChatConverted
  extends IChatListener.Stub
{
  long mAccountId;
  Activity mActivity;
  IChatSession mChatSession;
  ChatScreenFragment mFragment;
  
  public ChatScreenFragment$GroupChatConverted(ChatScreenFragment paramChatScreenFragment, Activity paramActivity, IChatSession paramIChatSession, long paramLong)
  {
    mFragment = paramChatScreenFragment;
    mActivity = paramActivity;
    mChatSession = paramIChatSession;
    mAccountId = paramLong;
  }
  
  public void callEnded() {}
  
  public void chatClosed(String paramString) {}
  
  public void chatRead(String paramString) {}
  
  public void clearRefs()
  {
    mFragment = null;
    mActivity = null;
    mChatSession = null;
  }
  
  public void convertedToGroupChat(String paramString1, final String paramString2, final long paramLong)
  {
    ChatScreenFragment localChatScreenFragment1 = mFragment;
    Activity localActivity = mActivity;
    if ((localChatScreenFragment1 == null) || (localActivity == null)) {}
    while (!ChatScreenFragment.access$3100(localChatScreenFragment1)) {
      return;
    }
    ChatScreenFragment.access$1200(localChatScreenFragment1, "convertedToGroupChat: " + paramString1 + " ==> " + paramString2);
    final ChatScreenFragment localChatScreenFragment2 = mFragment;
    paramLong = mAccountId;
    if ((localChatScreenFragment2 != null) && (mActivity != null)) {
      localActivity.runOnUiThread(new Runnable()
      {
        public void run()
        {
          try
          {
            IChatSession localIChatSession = val$service.getImSessionForAccountId(paramLong).getChatSession(localChatScreenFragment2);
            if (localIChatSession != null) {
              localIChatSession.leave();
            }
          }
          catch (RemoteException localRemoteException)
          {
            for (;;) {}
          }
          ChatScreenFragment.access$700(paramString2).resumeRequery();
          ChatScreenFragment.access$1800(paramString2, val$groupChatRoom, paramLong);
        }
      });
    }
    ChatScreenFragment.access$3102(localChatScreenFragment1, false);
    try
    {
      mChatSession.removeRemoteChatListener(this);
      clearRefs();
      return;
    }
    catch (RemoteException paramString1) {}
  }
  
  public void missedCall() {}
  
  public void newMessageReceived(String paramString1, String paramString2, boolean paramBoolean) {}
  
  public void newMessageSent(String paramString) {}
  
  public void participantJoined(String paramString1, String paramString2) {}
  
  public void participantLeft(String paramString1, String paramString2) {}
  
  public boolean useLightweightNotify()
  {
    return false;
  }
  
  public void willConvertToGroupChat(String paramString1, String paramString2, long paramLong) {}
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.GroupChatConverted
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */