package com.google.android.talk.fragments;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.google.android.talk.ChatView;
import com.google.android.talk.StringUtils;
import com.google.android.talk.util.ChatList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

class ChatScreenFragment$ViewPagerActiveChats
  implements ChatScreenFragment.ActiveChats
{
  private HashMap<Object, ChatView> mChatsMapping = new HashMap();
  Runnable mOnDone;
  private PagerAdapter mPageAdapter = new PagerAdapter()
  {
    ChatView mRecycledChatView;
    
    public void destroyItem(View paramAnonymousView, int paramAnonymousInt, Object paramAnonymousObject)
    {
      paramAnonymousView = (String)paramAnonymousObject;
      paramAnonymousObject = (ChatView)mChatsMapping.get(paramAnonymousObject);
      mChatsMapping.remove(paramAnonymousView);
      ((ViewGroup)((ChatView)paramAnonymousObject).getParent()).removeView((View)paramAnonymousObject);
      ((ChatView)paramAnonymousObject).unfocus();
      ((ChatView)paramAnonymousObject).onStop();
      mRecycledChatView = ((ChatView)paramAnonymousObject);
    }
    
    public void finishUpdate(View paramAnonymousView) {}
    
    public int getCount()
    {
      if (mViewPagerChatList != null) {
        return mViewPagerChatList.getCount();
      }
      return 0;
    }
    
    public int getItemPosition(Object paramAnonymousObject)
    {
      paramAnonymousObject = (String)paramAnonymousObject;
      int j = mViewPagerChatList.getCount();
      int i = 0;
      while (i < j)
      {
        mViewPagerChatList.moveToPosition(i);
        if (TextUtils.equals(mViewPagerChatList.getUsername(), (CharSequence)paramAnonymousObject)) {
          return i;
        }
        i += 1;
      }
      return -2;
    }
    
    public CharSequence getPageTitle(int paramAnonymousInt)
    {
      String str = "";
      if (ChatScreenFragment.access$700(this$0).getCount() > paramAnonymousInt)
      {
        ChatScreenFragment.access$700(this$0).moveToPosition(paramAnonymousInt);
        str = ChatScreenFragment.access$800(this$0, ChatScreenFragment.access$700(this$0));
      }
      return str;
    }
    
    public Object instantiateItem(View paramAnonymousView, int paramAnonymousInt)
    {
      mViewPagerChatList.moveToPosition(paramAnonymousInt);
      Intent localIntent = mViewPagerChatList.getIntent();
      ChatView localChatView2 = mRecycledChatView;
      mRecycledChatView = null;
      ChatView localChatView1 = localChatView2;
      if (localChatView2 == null) {
        localChatView1 = new ChatView(ChatScreenFragment.access$200(this$0), new ViewGroup.LayoutParams(-1, -1), ChatScreenFragment.access$900(this$0));
      }
      localChatView1.initialize(localIntent, mViewPagerChatList, null, ChatScreenFragment.access$200(this$0));
      localChatView1.setCallStateClient(ChatScreenFragment.access$1000(this$0));
      ((ViewGroup)paramAnonymousView).addView(localChatView1);
      paramAnonymousView = localChatView1.getContact();
      mChatsMapping.put(paramAnonymousView, localChatView1);
      return paramAnonymousView;
    }
    
    public boolean isViewFromObject(View paramAnonymousView, Object paramAnonymousObject)
    {
      return mChatsMapping.get(paramAnonymousObject) == paramAnonymousView;
    }
    
    public void restoreState(Parcelable paramAnonymousParcelable, ClassLoader paramAnonymousClassLoader) {}
    
    public Parcelable saveState()
    {
      return null;
    }
    
    public void startUpdate(View paramAnonymousView) {}
  };
  private LocalOnPageChangeListener mPageListener = new LocalOnPageChangeListener(null);
  private ViewPager mViewPager;
  private ChatList mViewPagerChatList;
  
  public ChatScreenFragment$ViewPagerActiveChats(ChatScreenFragment paramChatScreenFragment, ViewGroup paramViewGroup)
  {
    mViewPager = ((ViewPager)paramViewGroup.findViewById(2131755063));
    mViewPager.setVisibility(0);
    mViewPager.setPageMargin(paramChatScreenFragment.getResources().getDimensionPixelSize(2131427397));
  }
  
  public void foreachChatView(ChatScreenFragment.ViewRunnable paramViewRunnable)
  {
    Iterator localIterator = mChatsMapping.values().iterator();
    while (localIterator.hasNext()) {
      paramViewRunnable.run((ChatView)localIterator.next());
    }
  }
  
  public View getRootView()
  {
    return mViewPager;
  }
  
  public ChatView getSelectedChatView()
  {
    if (mViewPagerChatList == null) {
      return null;
    }
    mViewPagerChatList.moveToPosition(getSelectedItemPosition());
    String str = mViewPagerChatList.getUsername();
    Iterator localIterator = mChatsMapping.values().iterator();
    while (localIterator.hasNext())
    {
      ChatView localChatView = (ChatView)localIterator.next();
      if (TextUtils.equals(str, localChatView.getContact())) {
        return localChatView;
      }
    }
    return null;
  }
  
  public int getSelectedItemPosition()
  {
    return mViewPager.getCurrentItem();
  }
  
  public void onHiddenChanged(boolean paramBoolean)
  {
    if (paramBoolean) {
      stop();
    }
  }
  
  public void selectNext(boolean paramBoolean, Runnable paramRunnable)
  {
    mOnDone = paramRunnable;
    paramRunnable = mViewPager;
    int j = getSelectedItemPosition();
    if (paramBoolean) {}
    for (int i = 1;; i = -1)
    {
      paramRunnable.setCurrentItem(i + j);
      return;
    }
  }
  
  public void setAdapter(ChatScreenFragment.GalleryAdapter paramGalleryAdapter)
  {
    if (paramGalleryAdapter == null)
    {
      mViewPagerChatList = null;
      mViewPager.setOnPageChangeListener(null);
      mViewPager.setAdapter(null);
    }
    for (;;)
    {
      paramGalleryAdapter = this$0.getActivity();
      if (paramGalleryAdapter != null) {
        paramGalleryAdapter.invalidateOptionsMenu();
      }
      return;
      mViewPagerChatList = mLocalChatList;
      mViewPager.setOnPageChangeListener(mPageListener);
      paramGalleryAdapter = mViewPager.getAdapter();
      if (paramGalleryAdapter != null) {
        paramGalleryAdapter.notifyDataSetChanged();
      } else {
        mViewPager.setAdapter(mPageAdapter);
      }
    }
  }
  
  public void setSelection(int paramInt)
  {
    int i = 0;
    int j = mViewPager.getCurrentItem();
    mViewPager.setCurrentItem(paramInt, false);
    if (j == paramInt) {
      mPageListener.onPageSelected(paramInt);
    }
    View localView = mViewPager.findViewById(2131755064);
    paramInt = i;
    if (mViewPagerChatList.getCount() == 1) {
      paramInt = 8;
    }
    localView.setVisibility(paramInt);
  }
  
  public void stop() {}
  
  private class LocalOnPageChangeListener
    implements ViewPager.OnPageChangeListener
  {
    private LocalOnPageChangeListener() {}
    
    public void onPageScrollStateChanged(int paramInt) {}
    
    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
    
    public void onPageSelected(int paramInt)
    {
      mViewPagerChatList.moveToPosition(paramInt);
      Object localObject = mViewPagerChatList.getIntent();
      if (localObject == null) {}
      do
      {
        return;
        ChatScreenFragment.access$200(this$0).setIntent((Intent)localObject);
        ChatScreenFragment.access$302(this$0, StringUtils.parseBareAddress(((Intent)localObject).getStringExtra("from")));
        localObject = getSelectedChatView();
        Iterator localIterator = mChatsMapping.values().iterator();
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
            ChatScreenFragment.access$500(this$0, ((ChatView)localObject).getContact(), ((ChatView)localObject).getAccountId(), false);
          }
          ((ChatView)localObject).initSession(false);
          if (ChatScreenFragment.access$600(this$0))
          {
            ((ChatView)localObject).setStartVoiceChatOnFirstDisplay(true);
            ChatScreenFragment.access$602(this$0, false);
          }
          ((ChatView)localObject).focus();
        }
      } while (mOnDone == null);
      mOnDone.run();
      mOnDone = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.ViewPagerActiveChats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */