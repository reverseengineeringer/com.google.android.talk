package com.google.android.talk.fragments;

import android.util.Log;
import android.view.View;
import com.google.android.talk.ActivityUtils;
import com.google.android.talk.ChatView;

class ChatScreenFragment$1$1
  implements ChatScreenFragment.ViewRunnable
{
  ChatScreenFragment$1$1(ChatScreenFragment.1 param1) {}
  
  public boolean run(View paramView)
  {
    boolean bool2 = true;
    paramView = (ChatView)paramView;
    boolean bool1 = bool2;
    if (paramView != null)
    {
      bool1 = bool2;
      if (!paramView.initSession(true))
      {
        Log.e("talk", "invalidateImSessions failed. Finish!");
        ActivityUtils.showLandingPage(ChatScreenFragment.access$200(this$1.this$0));
        bool1 = false;
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */