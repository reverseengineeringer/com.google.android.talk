package com.google.android.talk;

import android.view.MenuItem;
import android.widget.PopupMenu.OnMenuItemClickListener;
import com.google.android.talk.fragments.ChatScreenFragment.ChatHost;

class ChatView$8
  implements PopupMenu.OnMenuItemClickListener
{
  ChatView$8(ChatView paramChatView) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    ChatView.access$3500(this$0).handleMenuItem(this$0, paramMenuItem, paramMenuItem.getItemId());
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */