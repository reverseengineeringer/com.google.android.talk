package com.google.android.talk;

import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListView;
import java.util.HashMap;
import java.util.HashSet;

class ChatView$AvatarCache
{
  HashMap<String, Drawable> mImageCache = new HashMap();
  HashSet<String> mOutstanding = new HashSet();
  
  ChatView$AvatarCache(ChatView paramChatView) {}
  
  public Drawable getAvatar(final String paramString, final ChatView.MessageItem paramMessageItem)
  {
    if (mImageCache.containsKey(paramString)) {
      return (Drawable)mImageCache.get(paramString);
    }
    if (!mOutstanding.contains(paramString))
    {
      mOutstanding.add(paramString);
      paramMessageItem = new ContactInfoQuery(ChatView.access$2400(this$0), ChatView.access$7000(this$0), paramString, null, true);
      paramMessageItem.setContactInfoCallback(new ContactInfoQuery.ContactInfoQueryCallbackErrorHandler()
      {
        public void onContactInfoLoadFailed(String paramAnonymousString, Cursor paramAnonymousCursor)
        {
          Log.e("talk", "onContactInfoLoadFailed: " + paramAnonymousString + " " + paramAnonymousCursor);
          mOutstanding.remove(paramString);
        }
        
        public void onContactInfoLoaded()
        {
          mOutstanding.remove(paramString);
          mImageCache.put(paramString, paramMessageItem.getAvatar());
          ChatView.access$3600(this$0).invalidateViews();
          paramMessageItem.cleanupContactInfoCursor();
        }
      });
      paramMessageItem.startQueryForContactInfo();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.AvatarCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */