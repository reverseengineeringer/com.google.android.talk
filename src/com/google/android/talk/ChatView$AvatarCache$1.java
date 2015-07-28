package com.google.android.talk;

import android.database.Cursor;
import android.util.Log;
import android.widget.ListView;
import java.util.HashMap;
import java.util.HashSet;

class ChatView$AvatarCache$1
  implements ContactInfoQuery.ContactInfoQueryCallbackErrorHandler
{
  ChatView$AvatarCache$1(ChatView.AvatarCache paramAvatarCache, String paramString, ContactInfoQuery paramContactInfoQuery) {}
  
  public void onContactInfoLoadFailed(String paramString, Cursor paramCursor)
  {
    Log.e("talk", "onContactInfoLoadFailed: " + paramString + " " + paramCursor);
    this$1.mOutstanding.remove(val$emailAddress);
  }
  
  public void onContactInfoLoaded()
  {
    this$1.mOutstanding.remove(val$emailAddress);
    this$1.mImageCache.put(val$emailAddress, val$query.getAvatar());
    ChatView.access$3600(this$1.this$0).invalidateViews();
    val$query.cleanupContactInfoCursor();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.AvatarCache.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */