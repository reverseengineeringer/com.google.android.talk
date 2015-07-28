package com.google.android.talk.fragments;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;

class ChatScreenFragment$5
  implements TextWatcher
{
  ChatScreenFragment$5(ChatScreenFragment paramChatScreenFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    View localView = ChatScreenFragment.access$2600(this$0);
    if (paramEditable.length() > 0) {}
    for (boolean bool = true;; bool = false)
    {
      localView.setEnabled(bool);
      return;
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */