package com.google.android.talk;

import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupMenu;
import android.widget.PopupMenu.OnMenuItemClickListener;

class ChatView$16
  implements View.OnClickListener
{
  ChatView$16(ChatView paramChatView) {}
  
  public void onClick(View paramView)
  {
    paramView = new PopupMenu(ChatView.access$2400(this$0), paramView);
    paramView.getMenuInflater().inflate(2131689473, paramView.getMenu());
    paramView.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener()
    {
      public boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
      {
        return false;
      }
    });
    paramView.show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */