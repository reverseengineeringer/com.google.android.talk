package com.google.android.talk;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;

class ChatView$4
  implements Runnable
{
  ChatView$4(ChatView paramChatView) {}
  
  public void run()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("body", ChatView.access$1000(this$0));
    localContentValues.put("type", Integer.valueOf(14));
    localContentValues.put("date", Long.valueOf(System.currentTimeMillis()));
    ChatView.access$2400(this$0).getContentResolver().insert(ChatView.access$3700(this$0), localContentValues);
    ChatView.access$3800(this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */