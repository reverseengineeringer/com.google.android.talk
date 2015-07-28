package com.google.android.talk;

import android.content.AsyncQueryHandler;
import android.content.Context;
import android.database.Cursor;
import android.widget.ListView;
import com.google.android.talk.fragments.ChatScreenFragment.ChatHost;

final class ChatView$QueryHandler
  extends AsyncQueryHandler
{
  public ChatView$QueryHandler(ChatView paramChatView, Context paramContext)
  {
    super(paramContext.getContentResolver());
  }
  
  protected void onQueryComplete(int paramInt, Object arg2, Cursor paramCursor)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 10: 
      ??? = new ChatView.DeltaCursor(this$0, paramCursor);
      ChatView.access$000(this$0, "chat history onQueryComplete");
      ChatView.access$2502(this$0, ((Cursor)???).getColumnIndexOrThrow("nickname"));
      ChatView.access$2602(this$0, ((Cursor)???).getColumnIndexOrThrow("body"));
      ChatView.access$2702(this$0, ((Cursor)???).getColumnIndexOrThrow("date"));
      ChatView.access$2802(this$0, ((Cursor)???).getColumnIndexOrThrow("type"));
      ChatView.access$2902(this$0, ((Cursor)???).getColumnIndexOrThrow("show_ts"));
      ChatView.access$3002(this$0, ((Cursor)???).getColumnIndexOrThrow("err_code"));
      ChatView.access$3102(this$0, ((Cursor)???).getColumnIndexOrThrow("delta"));
      ChatView.access$3202(this$0, ((Cursor)???).getColumnIndexOrThrow("send_status"));
      ChatView.access$200(this$0).changeCursor((Cursor)???);
      ChatView.access$3300(this$0);
      synchronized (ChatView.access$2100(this$0))
      {
        ChatView.access$3402(this$0, true);
        ChatView.access$2300(this$0);
        return;
      }
    }
    if ((paramCursor != null) && (paramCursor.moveToFirst())) {
      ChatView.access$1602(this$0, paramCursor.getLong(0));
    }
    for (;;)
    {
      ChatView.access$3500(this$0).cacheContactId(ChatView.access$1700(this$0), ChatView.access$1600(this$0));
      if (paramCursor != null) {
        paramCursor.close();
      }
      this$0.updateHost();
      ChatView.access$3600(this$0).invalidateViews();
      return;
      ChatView.access$1602(this$0, -1L);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.QueryHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */