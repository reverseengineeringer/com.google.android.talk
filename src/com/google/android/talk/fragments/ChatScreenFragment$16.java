package com.google.android.talk.fragments;

import android.util.Log;
import android.view.View;
import com.google.android.talk.ActivityUtils;
import com.google.android.talk.ChatView;

class ChatScreenFragment$16
  implements ChatScreenFragment.ViewRunnable
{
  ChatScreenFragment$16(ChatScreenFragment paramChatScreenFragment) {}
  
  public boolean run(View paramView)
  {
    paramView = (ChatView)paramView;
    if (paramView != null)
    {
      ChatScreenFragment.access$500(this$0, paramView.getContact(), paramView.getAccountId(), false);
      if (!paramView.initSession(false))
      {
        Log.e("talk", "initSession failed. Finish!");
        ActivityUtils.showLandingPage(ChatScreenFragment.access$200(this$0));
        return false;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */