package com.google.android.talk;

import android.app.Activity;
import android.util.Log;
import com.google.android.gtalkservice.GroupChatInvitation;
import com.google.android.gtalkservice.IGroupChatInvitationListener.Stub;

class ChatView$GroupChatInvitationListener
  extends IGroupChatInvitationListener.Stub
{
  volatile ChatView mChatView;
  
  public ChatView$GroupChatInvitationListener(ChatView paramChatView)
  {
    mChatView = paramChatView;
  }
  
  public void clearRefs()
  {
    mChatView = null;
  }
  
  public boolean onInvitationReceived(final GroupChatInvitation paramGroupChatInvitation)
  {
    try
    {
      ChatView localChatView = mChatView;
      if (localChatView == null) {
        return false;
      }
      StringUtils.parseBareAddress(paramGroupChatInvitation.getInviter());
      if (ChatView.access$1700(localChatView).equals(paramGroupChatInvitation.getRoomAddress()))
      {
        ChatView.access$2400(localChatView).runOnUiThread(new Runnable()
        {
          public void run()
          {
            if (mChatView == null) {}
            do
            {
              return;
              ChatView.access$3902(mChatView, paramGroupChatInvitation.getInviter());
              ChatView.access$4002(mChatView, paramGroupChatInvitation.getRoomAddress());
              ChatView.access$4102(mChatView, paramGroupChatInvitation.getPassword());
              if (TalkApp.verboseLoggable()) {
                ChatView.access$4200(mChatView, "received MUC invitation from " + ChatView.access$3900(mChatView) + ", room=" + ChatView.access$4000(mChatView));
              }
            } while (ChatView.access$4300(mChatView) == null);
            ChatView.access$4400(mChatView, ChatView.access$3900(mChatView), ChatView.access$4000(mChatView), ChatView.access$4100(mChatView));
          }
        });
        return true;
      }
      if (TalkApp.verboseLoggable())
      {
        ChatView.access$4200(mChatView, "MUC invitation received from " + paramGroupChatInvitation.getInviter() + ", room " + paramGroupChatInvitation.getRoomAddress() + " but cv.mContact is " + ChatView.access$1700(localChatView));
        return false;
      }
    }
    catch (RuntimeException paramGroupChatInvitation)
    {
      Log.e("talk", "onInvitationReceived threw", paramGroupChatInvitation);
      throw paramGroupChatInvitation;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.GroupChatInvitationListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */