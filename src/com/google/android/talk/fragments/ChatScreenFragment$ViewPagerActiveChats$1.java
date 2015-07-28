package com.google.android.talk.fragments;

import android.content.Intent;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.google.android.talk.ChatView;
import com.google.android.talk.util.ChatList;
import java.util.HashMap;

class ChatScreenFragment$ViewPagerActiveChats$1
  extends PagerAdapter
{
  ChatView mRecycledChatView;
  
  ChatScreenFragment$ViewPagerActiveChats$1(ChatScreenFragment.ViewPagerActiveChats paramViewPagerActiveChats) {}
  
  public void destroyItem(View paramView, int paramInt, Object paramObject)
  {
    paramView = (String)paramObject;
    paramObject = (ChatView)ChatScreenFragment.ViewPagerActiveChats.access$400(this$1).get(paramObject);
    ChatScreenFragment.ViewPagerActiveChats.access$400(this$1).remove(paramView);
    ((ViewGroup)((ChatView)paramObject).getParent()).removeView((View)paramObject);
    ((ChatView)paramObject).unfocus();
    ((ChatView)paramObject).onStop();
    mRecycledChatView = ((ChatView)paramObject);
  }
  
  public void finishUpdate(View paramView) {}
  
  public int getCount()
  {
    if (ChatScreenFragment.ViewPagerActiveChats.access$100(this$1) != null) {
      return ChatScreenFragment.ViewPagerActiveChats.access$100(this$1).getCount();
    }
    return 0;
  }
  
  public int getItemPosition(Object paramObject)
  {
    paramObject = (String)paramObject;
    int j = ChatScreenFragment.ViewPagerActiveChats.access$100(this$1).getCount();
    int i = 0;
    while (i < j)
    {
      ChatScreenFragment.ViewPagerActiveChats.access$100(this$1).moveToPosition(i);
      if (TextUtils.equals(ChatScreenFragment.ViewPagerActiveChats.access$100(this$1).getUsername(), (CharSequence)paramObject)) {
        return i;
      }
      i += 1;
    }
    return -2;
  }
  
  public CharSequence getPageTitle(int paramInt)
  {
    String str = "";
    if (ChatScreenFragment.access$700(this$1.this$0).getCount() > paramInt)
    {
      ChatScreenFragment.access$700(this$1.this$0).moveToPosition(paramInt);
      str = ChatScreenFragment.access$800(this$1.this$0, ChatScreenFragment.access$700(this$1.this$0));
    }
    return str;
  }
  
  public Object instantiateItem(View paramView, int paramInt)
  {
    ChatScreenFragment.ViewPagerActiveChats.access$100(this$1).moveToPosition(paramInt);
    Intent localIntent = ChatScreenFragment.ViewPagerActiveChats.access$100(this$1).getIntent();
    ChatView localChatView2 = mRecycledChatView;
    mRecycledChatView = null;
    ChatView localChatView1 = localChatView2;
    if (localChatView2 == null) {
      localChatView1 = new ChatView(ChatScreenFragment.access$200(this$1.this$0), new ViewGroup.LayoutParams(-1, -1), ChatScreenFragment.access$900(this$1.this$0));
    }
    localChatView1.initialize(localIntent, ChatScreenFragment.ViewPagerActiveChats.access$100(this$1), null, ChatScreenFragment.access$200(this$1.this$0));
    localChatView1.setCallStateClient(ChatScreenFragment.access$1000(this$1.this$0));
    ((ViewGroup)paramView).addView(localChatView1);
    paramView = localChatView1.getContact();
    ChatScreenFragment.ViewPagerActiveChats.access$400(this$1).put(paramView, localChatView1);
    return paramView;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return ChatScreenFragment.ViewPagerActiveChats.access$400(this$1).get(paramObject) == paramView;
  }
  
  public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader) {}
  
  public Parcelable saveState()
  {
    return null;
  }
  
  public void startUpdate(View paramView) {}
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.ViewPagerActiveChats.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */