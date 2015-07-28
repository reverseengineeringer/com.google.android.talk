package com.google.android.talk.fragments;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class ChatScreenFragment$4
  implements TextView.OnEditorActionListener
{
  ChatScreenFragment$4(ChatScreenFragment paramChatScreenFragment) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent != null) && (paramKeyEvent.isAltPressed())) {
      return false;
    }
    ChatScreenFragment.access$2500(this$0);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */