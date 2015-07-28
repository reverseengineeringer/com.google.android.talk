package com.google.android.talk;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.google.android.gsf.TalkContract.AccountSettings.QueryMap;
import com.google.android.gtalkservice.IChatListener.Stub;
import com.google.android.talk.fragments.ChatScreenFragment.ChatHost;
import com.google.android.talk.videochat.NotificationRingtonePlayer;
import java.util.List;

class ChatView$ChatListener
  extends IChatListener.Stub
{
  volatile ChatView mChatView;
  
  ChatView$ChatListener(ChatView paramChatView)
  {
    mChatView = paramChatView;
  }
  
  private void simpleRequery()
  {
    ChatView localChatView = mChatView;
    if (localChatView == null) {
      return;
    }
    ChatView.access$3800(localChatView);
  }
  
  public void callEnded()
  {
    simpleRequery();
  }
  
  public void chatClosed(String paramString) {}
  
  public void chatRead(String paramString) {}
  
  public void clearRefs()
  {
    mChatView = null;
  }
  
  public void convertedToGroupChat(String paramString1, final String paramString2, long paramLong)
  {
    paramString1 = mChatView;
    if (paramString1 == null) {
      return;
    }
    ChatView.access$2400(paramString1).runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (mChatView == null) {
          return;
        }
        ChatView.access$6600(mChatView);
        ChatView.access$3500(mChatView).convertedToGroupChat(mChatView, paramString2);
      }
    });
  }
  
  public void missedCall()
  {
    simpleRequery();
  }
  
  public void newMessageReceived(String paramString1, String paramString2, boolean paramBoolean)
  {
    paramString2 = mChatView;
    if (paramString2 == null) {}
    do
    {
      do
      {
        return;
        ChatView.access$6702(paramString2, paramString1);
        ChatView.access$6802(paramString2, true);
        ChatView.access$3800(paramString2);
      } while ((!ChatView.access$6900(paramString2)) || (!paramBoolean));
      paramString1 = SettingsCache.getInstance().getSettingsMap(ChatView.access$7000(paramString2));
      if ("off".equals(paramString1.getTextNotification()))
      {
        ChatView.access$000(paramString2, "notification setting is off");
        return;
      }
      paramString1 = paramString1.getTextRingtoneURI();
    } while ((paramString1 == null) || (paramString1.length() <= 0));
    paramString2 = new NotificationRingtonePlayer(paramString2.getContext());
    paramString2.setCustomRingtoneUri(Uri.parse(paramString1));
    paramString2.setStreamType(5);
    paramString2.setLowVolume(true);
    paramString2.ring();
  }
  
  public void newMessageSent(String paramString)
  {
    paramString = mChatView;
    if (paramString == null) {}
    do
    {
      return;
      simpleRequery();
    } while (!((AccessibilityManager)paramString.getContext().getSystemService("accessibility")).isEnabled());
    AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain(64);
    String str = paramString.getResources().getString(2131493127);
    localAccessibilityEvent.getText().add(str);
    localAccessibilityEvent.setAddedCount(str.length());
    paramString.sendAccessibilityEventUnchecked(localAccessibilityEvent);
  }
  
  public void participantJoined(final String paramString1, final String paramString2)
  {
    ChatView localChatView = mChatView;
    if (localChatView == null) {
      return;
    }
    ChatView.access$2400(localChatView).runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (mChatView == null) {}
        while (!mChatView.getContact().equals(paramString1)) {
          return;
        }
        ChatView.access$000(mChatView, "ChatListener.participantJoined: nickname=" + paramString2);
        ChatView.access$3500(mChatView).update(mChatView);
      }
    });
  }
  
  public void participantLeft(final String paramString1, final String paramString2)
  {
    ChatView localChatView = mChatView;
    if (localChatView == null) {
      return;
    }
    ChatView.access$2400(localChatView).runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (mChatView == null) {}
        while (!mChatView.getContact().equals(paramString1)) {
          return;
        }
        ChatView.access$000(mChatView, "ChatListener.participantLeft: nickname=" + paramString2);
        ChatView.access$3500(mChatView).update(mChatView);
      }
    });
  }
  
  public boolean useLightweightNotify()
  {
    ChatView localChatView = mChatView;
    if (localChatView == null) {}
    while ((!ChatView.access$6900(localChatView)) || (ChatView.access$7100(localChatView)) || (!ChatView.access$2400(localChatView).hasWindowFocus())) {
      return false;
    }
    return true;
  }
  
  public void willConvertToGroupChat(String paramString1, final String paramString2, long paramLong)
  {
    paramString1 = mChatView;
    if (paramString1 == null) {
      return;
    }
    ChatView.access$2400(paramString1).runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (mChatView == null) {
          return;
        }
        ChatView.access$3500(mChatView).willConvertToGroupChat(mChatView, paramString2);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.ChatListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */