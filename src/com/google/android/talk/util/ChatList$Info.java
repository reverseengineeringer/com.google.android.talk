package com.google.android.talk.util;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Intent;
import android.database.Cursor;
import com.google.android.gsf.TalkContract.Chats;

class ChatList$Info
{
  private long mAccountId;
  private int mClientType;
  private long mId;
  private boolean mIsGroupChat;
  private String mNickname;
  private int mType;
  private String mUsername;
  
  ChatList$Info(Cursor paramCursor, ContentResolver paramContentResolver)
  {
    mId = paramCursor.getLong(0);
    mAccountId = paramCursor.getLong(1);
    mUsername = paramCursor.getString(3);
    mNickname = paramCursor.getString(4);
    mType = paramCursor.getInt(5);
    mClientType = paramCursor.getInt(6);
    if (paramCursor.getInt(2) != 0) {}
    for (;;)
    {
      mIsGroupChat = bool;
      return;
      bool = false;
    }
  }
  
  Intent getIntent(ContentResolver paramContentResolver)
  {
    paramContentResolver = new Intent("android.intent.action.VIEW", ContentUris.withAppendedId(TalkContract.Chats.CONTENT_URI, mId));
    paramContentResolver.putExtra("from", mUsername);
    paramContentResolver.putExtra("accountId", mAccountId);
    if (mIsGroupChat) {
      if (!mIsGroupChat) {
        break label68;
      }
    }
    label68:
    for (int i = 1;; i = 0)
    {
      paramContentResolver.putExtra("groupChat", i);
      return paramContentResolver;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.util.ChatList.Info
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */