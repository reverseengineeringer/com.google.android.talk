package com.google.android.talk.fragments;

import android.animation.LayoutTransition;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import com.google.android.talk.ChatView;
import com.google.android.videochat.CallStateClient;

class ChatScreenFragment$SimpleActiveChats
  implements ChatScreenFragment.ActiveChats
{
  ViewGroup mChatRoot;
  ChatView mChatView1;
  ChatView mChatView2;
  ChatScreenFragment.GalleryAdapter mGalleryAdapter;
  boolean mInitialized1;
  boolean mInitialized2;
  LayoutTransition mLayoutTransition;
  int mSelectedItemPosition = -1;
  boolean oneIsTop;
  
  public ChatScreenFragment$SimpleActiveChats(ChatScreenFragment paramChatScreenFragment, ViewGroup paramViewGroup)
  {
    mChatRoot = paramViewGroup;
    mChatView1 = ((ChatView)paramViewGroup.findViewById(2131755061));
    mChatView2 = ((ChatView)paramViewGroup.findViewById(2131755062));
    mChatView1.setup(null, ChatScreenFragment.access$900(paramChatScreenFragment));
    mChatView2.setup(null, ChatScreenFragment.access$900(paramChatScreenFragment));
    mLayoutTransition = new LayoutTransition();
    mLayoutTransition.setAnimator(0, null);
    mLayoutTransition.setAnimator(1, null);
    mLayoutTransition.setDuration(2, 220L);
    mLayoutTransition.setDuration(3, 150L);
    mLayoutTransition.setStartDelay(2, 0L);
    mLayoutTransition.setStartDelay(3, 0L);
    mLayoutTransition.setInterpolator(2, new AccelerateInterpolator(1.5F));
    mLayoutTransition.setInterpolator(3, new AccelerateInterpolator(1.5F));
    mChatRoot.setLayoutTransition(mLayoutTransition);
  }
  
  private boolean checkMatch(ChatView paramChatView, Intent paramIntent)
  {
    boolean bool = false;
    if (paramChatView.matchBuddy(paramIntent))
    {
      if (ChatScreenFragment.access$600(this$0))
      {
        ChatScreenFragment.access$602(this$0, false);
        paramChatView.startVoiceChat();
      }
      bool = true;
    }
    return bool;
  }
  
  public void foreachChatView(ChatScreenFragment.ViewRunnable paramViewRunnable)
  {
    if (mInitialized1) {
      paramViewRunnable.run(mChatView1);
    }
    if (mInitialized2) {
      paramViewRunnable.run(mChatView2);
    }
  }
  
  public View getRootView()
  {
    return mChatRoot;
  }
  
  public ChatView getSelectedChatView()
  {
    ChatView localChatView = null;
    if (oneIsTop) {
      if (mInitialized1) {
        localChatView = mChatView1;
      }
    }
    while (!mInitialized2) {
      return localChatView;
    }
    return mChatView2;
  }
  
  public int getSelectedItemPosition()
  {
    return mSelectedItemPosition;
  }
  
  public void onHiddenChanged(boolean paramBoolean)
  {
    if (paramBoolean) {
      stop();
    }
  }
  
  public void selectNext(boolean paramBoolean, Runnable paramRunnable)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setAdapter(ChatScreenFragment.GalleryAdapter paramGalleryAdapter)
  {
    mSelectedItemPosition = -1;
    mGalleryAdapter = paramGalleryAdapter;
  }
  
  public void setSelection(int paramInt)
  {
    boolean bool = false;
    if (paramInt == mSelectedItemPosition) {
      return;
    }
    Intent localIntent = mGalleryAdapter.getIntent(paramInt);
    if (oneIsTop)
    {
      if ((mInitialized1) && (checkMatch(mChatView1, localIntent))) {
        mSelectedItemPosition = paramInt;
      }
    }
    else if ((mInitialized2) && (checkMatch(mChatView2, localIntent)))
    {
      mSelectedItemPosition = paramInt;
      return;
    }
    mSelectedItemPosition = paramInt;
    if (mInitialized1)
    {
      mChatView1.saveUnsentComposedMessage(ChatScreenFragment.access$1100(this$0));
      mChatView1.onStop();
      mInitialized1 = false;
    }
    if (mInitialized2)
    {
      mChatView2.saveUnsentComposedMessage(ChatScreenFragment.access$1100(this$0));
      mChatView2.onStop();
      mInitialized2 = false;
    }
    ChatView localChatView1;
    ChatView localChatView2;
    if (oneIsTop)
    {
      localChatView1 = mChatView1;
      if (!oneIsTop) {
        break label377;
      }
      localChatView2 = mChatView2;
      label176:
      localChatView2.initialize(localIntent, ChatScreenFragment.access$700(this$0), null, this$0.getActivity());
      if ((ChatScreenFragment.access$600(this$0)) && (localChatView2.getContact().equals(ChatScreenFragment.access$300(this$0))))
      {
        localChatView2.setStartVoiceChatOnFirstDisplay(true);
        ChatScreenFragment.access$602(this$0, false);
      }
      localChatView2.restoreUnsentComposedMessage(ChatScreenFragment.access$1100(this$0));
      localChatView2.focus();
      localChatView2.setVisibility(0);
      localChatView1.setVisibility(8);
      if (!oneIsTop) {
        bool = true;
      }
      oneIsTop = bool;
      if (!oneIsTop) {
        break label386;
      }
      mInitialized1 = true;
    }
    for (;;)
    {
      ChatScreenFragment.access$1200(this$0, "setSelection: pos=" + paramInt + ", oneIsTop=" + oneIsTop + ", v1=" + mInitialized1 + ", v2=" + mInitialized2);
      ChatScreenFragment.access$1000(this$0).requestUpdate();
      return;
      localChatView1 = mChatView2;
      break;
      label377:
      localChatView2 = mChatView1;
      break label176;
      label386:
      mInitialized2 = true;
    }
  }
  
  public void stop()
  {
    mSelectedItemPosition = -1;
    if (mInitialized1)
    {
      mChatView1.saveUnsentComposedMessage(ChatScreenFragment.access$1100(this$0));
      mChatView1.onStop();
      mChatView1.setVisibility(8);
      mInitialized1 = false;
    }
    if (mInitialized2)
    {
      mChatView2.saveUnsentComposedMessage(ChatScreenFragment.access$1100(this$0));
      mChatView2.onStop();
      mChatView2.setVisibility(8);
      mInitialized2 = false;
    }
    ChatScreenFragment.access$1200(this$0, "stop: mInitialized1=" + mInitialized1 + ", mInitialized2=" + mInitialized2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.SimpleActiveChats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */