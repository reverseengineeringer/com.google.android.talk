package com.google.android.talk.fragments;

import android.app.Activity;
import android.content.Intent;
import android.os.RemoteException;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import com.google.android.gtalkservice.IImSession;
import com.google.android.talk.ActivityUtils;
import com.google.android.talk.ChatView;
import com.google.android.talk.DatabaseUtils;
import com.google.android.talk.util.ChatList;
import java.util.HashMap;

class ChatScreenFragment$1
  implements ChatScreenFragment.ChatHost
{
  ChatScreenFragment$1(ChatScreenFragment paramChatScreenFragment) {}
  
  public void cacheContactId(String paramString, long paramLong)
  {
    ChatScreenFragment.access$2000(this$0).put(paramString, Long.valueOf(paramLong));
  }
  
  public void convertedToGroupChat(ChatView paramChatView, String paramString)
  {
    ChatScreenFragment.access$302(this$0, paramString);
    ChatScreenFragment.access$700(this$0).resumeRequery();
  }
  
  public long getCachedContactId(String paramString)
  {
    long l = -1L;
    if (ChatScreenFragment.access$2000(this$0).containsKey(paramString)) {
      l = ((Long)ChatScreenFragment.access$2000(this$0).get(paramString)).longValue();
    }
    return l;
  }
  
  public View getMessageBar()
  {
    return ChatScreenFragment.access$1300(this$0);
  }
  
  public boolean handleMenuItem(ChatView paramChatView, MenuItem paramMenuItem, int paramInt)
  {
    boolean bool2 = true;
    boolean bool1;
    if (paramChatView == null) {
      bool1 = false;
    }
    for (;;)
    {
      return bool1;
      Object localObject = paramChatView.getContact();
      IImSession localIImSession = paramChatView.getImSession();
      switch (paramInt)
      {
      default: 
        localObject = new StringBuilder().append(">>>>>>>>>>>>> no handler for menu item: ").append(paramInt);
        if (paramMenuItem == null)
        {
          paramChatView = "NULL";
          Log.e("talk", paramChatView);
          return false;
        }
      case 2131755198: 
        paramChatView.startVoiceChat();
        return true;
      case 2131755197: 
        paramChatView.startVideoChat();
        return true;
      case 2131755102: 
        paramChatView.resumeVideoChat();
        return true;
      case 2131755097: 
        paramChatView.endVideoOrVoiceChat();
        return true;
      case 2131755098: 
        paramChatView.endVideoOrVoiceChat();
        return true;
      case 2131755203: 
        this$0.addToChat();
        return true;
      case 2131755200: 
        this$0.leaveChat();
        return true;
      case 2131755204: 
        this$0.clearChat();
        return true;
      case 2131755202: 
        paramMenuItem = new BuddyListFragment.ListItemInfo();
        mContactId = paramChatView.getChatsTableContactId();
        mAccountId = paramChatView.getAccountId();
        mUsername = paramChatView.getContact();
        ChatScreenFragment.access$1400(this$0).onShowContactInfo(paramMenuItem);
        return true;
      case 2131755189: 
        bool1 = bool2;
        if (localObject == null) {
          continue;
        }
        bool1 = bool2;
        if (localIImSession == null) {
          continue;
        }
      case 2131755190: 
      case 2131755201: 
      case 2131755101: 
      case 2131755185: 
      case 2131755186: 
      case 2131755187: 
      case 2131755188: 
        try
        {
          label212:
          this$0.leaveChat();
          localIImSession.blockContact((String)localObject);
          DatabaseUtils.removeChatsByContactId(this$0.getActivity().getContentResolver(), paramChatView.getChatsTableContactId());
          return true;
          bool1 = bool2;
          if (localObject == null) {
            continue;
          }
          try
          {
            this$0.leaveChat();
            localIImSession.removeContact((String)localObject);
            return true;
          }
          catch (RemoteException paramChatView)
          {
            return true;
          }
          this$0.toggleOtr();
          return true;
          paramChatView.toggleMute();
          break label212;
          paramChatView.handleAudioChoice(paramInt);
          break label212;
          paramChatView = paramMenuItem.getTitle();
        }
        catch (RemoteException paramMenuItem)
        {
          for (;;) {}
        }
      }
    }
  }
  
  public void invalidateImSession()
  {
    ChatScreenFragment.access$1200(this$0, "invalidateImSession");
    ChatScreenFragment.access$1700(this$0, new ChatScreenFragment.ViewRunnable()
    {
      public boolean run(View paramAnonymousView)
      {
        boolean bool2 = true;
        paramAnonymousView = (ChatView)paramAnonymousView;
        boolean bool1 = bool2;
        if (paramAnonymousView != null)
        {
          bool1 = bool2;
          if (!paramAnonymousView.initSession(true))
          {
            Log.e("talk", "invalidateImSessions failed. Finish!");
            ActivityUtils.showLandingPage(ChatScreenFragment.access$200(this$0));
            bool1 = false;
          }
        }
        return bool1;
      }
    });
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    this$0.startActivityForResult(paramIntent, paramInt);
  }
  
  public boolean startVideoChatAnimation()
  {
    ChatScreenFragment.access$1900(this$0);
    return ChatScreenFragment.access$1400(this$0).onVideoChatStarted();
  }
  
  public void update(View paramView)
  {
    ChatView localChatView = ChatScreenFragment.access$1600(this$0);
    if (paramView != localChatView) {}
    do
    {
      return;
      paramView = localChatView.getContact();
    } while ((paramView == null) || (!paramView.equals(ChatScreenFragment.access$300(this$0))));
    this$0.updateTitle(localChatView);
    ChatScreenFragment.access$1400(this$0).updateOtrStatus(localChatView.isOffTheRecord());
    this$0.getActivity().invalidateOptionsMenu();
  }
  
  public void willConvertToGroupChat(ChatView paramChatView, String paramString)
  {
    ChatScreenFragment.access$700(this$0).suspendRequery();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */