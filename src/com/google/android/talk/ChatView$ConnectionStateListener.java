package com.google.android.talk;

import android.app.Activity;
import android.util.Log;
import android.widget.ListView;
import com.google.android.gtalkservice.ConnectionError;
import com.google.android.gtalkservice.ConnectionState;
import com.google.android.gtalkservice.IConnectionStateListener.Stub;
import com.google.android.talk.fragments.ChatScreenFragment.ChatHost;

class ChatView$ConnectionStateListener
  extends IConnectionStateListener.Stub
{
  private volatile Activity mActivity;
  private volatile ChatView mChatView;
  
  public ChatView$ConnectionStateListener(ChatView paramChatView)
  {
    mChatView = paramChatView;
    mActivity = ChatView.access$2400(paramChatView);
  }
  
  public void clearRefs()
  {
    mChatView = null;
    mActivity = null;
  }
  
  public void connectionStateChanged(final ConnectionState paramConnectionState, final ConnectionError paramConnectionError, long paramLong, final String paramString)
  {
    try
    {
      paramString = mChatView;
      Activity localActivity = mActivity;
      if (paramString != null)
      {
        if (localActivity == null) {
          return;
        }
        localActivity.runOnUiThread(new Runnable()
        {
          public void run()
          {
            if (mChatView == null) {
              return;
            }
            switch (paramConnectionState.getState())
            {
            }
            for (;;)
            {
              ChatView.access$3600(paramString).invalidateViews();
              ChatView.access$1300(paramString);
              ChatView.access$3300(paramString);
              return;
              if ((paramConnectionError != null) && (paramConnectionError.getError() == 9))
              {
                ChatView.access$000(paramString, "Session terminated, invalidate IM sessions");
                ChatView.access$6600(paramString);
                ChatView.access$3500(paramString).invalidateImSession();
                paramString.addInvitationListener();
              }
            }
          }
        });
        return;
      }
    }
    catch (RuntimeException paramConnectionState)
    {
      Log.e("talk", "ChatView.connectionStateChanged error", paramConnectionState);
      throw paramConnectionState;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.ConnectionStateListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */