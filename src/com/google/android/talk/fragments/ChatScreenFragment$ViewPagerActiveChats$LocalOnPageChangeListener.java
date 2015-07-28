package com.google.android.talk.fragments;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import com.google.android.talk.ChatView;
import com.google.android.talk.StringUtils;
import com.google.android.talk.util.ChatList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

class ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener
  implements ViewPager.OnPageChangeListener
{
  private ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener(ChatScreenFragment.ViewPagerActiveChats paramViewPagerActiveChats) {}
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt)
  {
    ChatScreenFragment.ViewPagerActiveChats.access$100(this$1).moveToPosition(paramInt);
    Object localObject = ChatScreenFragment.ViewPagerActiveChats.access$100(this$1).getIntent();
    if (localObject == null) {}
    do
    {
      return;
      ChatScreenFragment.access$200(this$1.this$0).setIntent((Intent)localObject);
      ChatScreenFragment.access$302(this$1.this$0, StringUtils.parseBareAddress(((Intent)localObject).getStringExtra("from")));
      localObject = this$1.getSelectedChatView();
      Iterator localIterator = ChatScreenFragment.ViewPagerActiveChats.access$400(this$1).values().iterator();
      while (localIterator.hasNext())
      {
        ChatView localChatView = (ChatView)localIterator.next();
        if (localChatView != localObject) {
          localChatView.unfocus();
        }
      }
      if (localObject != null)
      {
        if (((ChatView)localObject).getSession() == null) {
          ChatScreenFragment.access$500(this$1.this$0, ((ChatView)localObject).getContact(), ((ChatView)localObject).getAccountId(), false);
        }
        ((ChatView)localObject).initSession(false);
        if (ChatScreenFragment.access$600(this$1.this$0))
        {
          ((ChatView)localObject).setStartVoiceChatOnFirstDisplay(true);
          ChatScreenFragment.access$602(this$1.this$0, false);
        }
        ((ChatView)localObject).focus();
      }
    } while (this$1.mOnDone == null);
    this$1.mOnDone.run();
    this$1.mOnDone = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.ViewPagerActiveChats.LocalOnPageChangeListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */