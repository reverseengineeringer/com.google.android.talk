package com.google.android.talk.util;

import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.database.Cursor;
import android.util.Log;

class ChatList$1
  extends AsyncQueryHandler
{
  ChatList$1(ChatList paramChatList, ContentResolver paramContentResolver, Runnable paramRunnable)
  {
    super(paramContentResolver);
  }
  
  protected void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    if (Log.isLoggable("talk", 3)) {
      ChatList.access$000(this$0, "AsyncQueryHandler.onQueryComplete");
    }
    if (ChatList.access$100(this$0)) {}
    do
    {
      return;
      ChatList.access$200(this$0, paramCursor, ((Boolean)paramObject).booleanValue());
      ChatList.access$300(this$0, paramCursor);
      paramCursor.close();
    } while (val$onQueryCompleteCallback == null);
    val$onQueryCompleteCallback.run();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.util.ChatList.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */