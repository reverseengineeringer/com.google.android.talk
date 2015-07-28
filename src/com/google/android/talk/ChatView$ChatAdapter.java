package com.google.android.talk;

import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.CursorAdapter;

class ChatView$ChatAdapter
  extends CursorAdapter
  implements AbsListView.OnScrollListener
{
  private Cursor mDelayedCursor;
  public int mScrollState;
  
  public ChatView$ChatAdapter(ChatView paramChatView, Context paramContext, Cursor paramCursor)
  {
    super(paramContext, paramCursor, false);
  }
  
  private void useDelayedCursor()
  {
    Cursor localCursor = mDelayedCursor;
    if (mDelayedCursor != null)
    {
      super.changeCursor(mDelayedCursor);
      mDelayedCursor = null;
    }
  }
  
  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    ((ChatView.MessageItem)paramView).bind(paramCursor);
  }
  
  public void changeCursor(Cursor paramCursor)
  {
    Cursor localCursor = getCursor();
    if ((localCursor != null) && (paramCursor != null) && (localCursor.getCount() == paramCursor.getCount()) && (paramCursor.getCount() > 0))
    {
      localCursor.moveToLast();
      paramCursor.moveToLast();
      int i;
      if (localCursor.getInt(ChatView.access$3200(this$0)) == 1)
      {
        i = 1;
        if (paramCursor.getInt(ChatView.access$3200(this$0)) != 1) {
          break label190;
        }
      }
      label190:
      for (int j = 1;; j = 0)
      {
        if ((i == 0) || (j != 0) || (!TextUtils.equals(localCursor.getString(ChatView.access$2600(this$0)), paramCursor.getString(ChatView.access$2600(this$0))))) {
          break label195;
        }
        ChatView.access$6000(this$0).removeMessages(9999);
        useDelayedCursor();
        mDelayedCursor = paramCursor;
        ChatView.access$6000(this$0).sendMessageDelayed(ChatView.access$6000(this$0).obtainMessage(9999), 350L);
        return;
        i = 0;
        break;
      }
    }
    label195:
    ChatView.access$6000(this$0).removeMessages(9999);
    if (mDelayedCursor != null)
    {
      mDelayedCursor.close();
      mDelayedCursor = null;
    }
    super.changeCursor(paramCursor);
  }
  
  public int getItemViewType(int paramInt)
  {
    Cursor localCursor = getCursor();
    if (localCursor.moveToPosition(paramInt)) {}
    switch (localCursor.getInt(ChatView.access$2800(this$0)))
    {
    default: 
      return 3;
    case 1: 
      return 0;
    case 0: 
      return 1;
    }
    return 2;
  }
  
  public int getViewTypeCount()
  {
    return 4;
  }
  
  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return new ChatView.MessageItem(this$0, ChatView.access$2400(this$0), getItemViewType(paramCursor.getPosition()));
  }
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    mScrollState = paramInt;
    ChatView.access$6200(this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.ChatAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */