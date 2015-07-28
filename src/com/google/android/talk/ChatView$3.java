package com.google.android.talk;

import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.util.Log;
import com.google.android.videochat.CallStateClient;

class ChatView$3
  implements ContactInfoQuery.ContactInfoQueryCallbackErrorHandler
{
  ChatView$3(ChatView paramChatView) {}
  
  public void onContactInfoLoadFailed(String paramString, Cursor paramCursor)
  {
    Log.e("talk", "onContactInfoLoadFailed: " + paramString + " " + paramCursor);
    ChatView.access$702(this$0, true);
    ChatView.access$802(this$0, paramString);
    ChatView.access$902(this$0, 2);
    ChatView.access$1102(this$0, 0L);
    ChatView.access$1202(this$0, 0);
    ChatView.access$1300(this$0);
    this$0.updateHost();
    ChatView.access$1400(this$0);
    ChatView.access$2002(this$0, TalkApp.getApplication(ChatView.access$2400(this$0)).getGenericAvatar());
  }
  
  public void onContactInfoLoaded()
  {
    ChatView.access$702(this$0, true);
    ChatView.access$802(this$0, ChatView.access$600(this$0).getNickName());
    ChatView.access$902(this$0, ChatView.access$600(this$0).getPresenceStatus());
    ChatView.access$1002(this$0, ChatView.access$600(this$0).getCustomPresence());
    ChatView.access$1102(this$0, ChatView.access$600(this$0).getContactId());
    ChatView.access$1202(this$0, ChatView.access$600(this$0).getCapabilities());
    ChatView.access$1300(this$0);
    this$0.updateHost();
    ChatView.access$1400(this$0);
    if (ChatView.access$1500(this$0) != null) {
      ChatView.access$1500(this$0).requestUpdate();
    }
    if (ChatView.access$1600(this$0) == -1L)
    {
      ??? = Uri.withAppendedPath(ContactsContract.CommonDataKinds.Email.CONTENT_LOOKUP_URI, Uri.encode(ChatView.access$1700(this$0)));
      ChatView.access$1800(this$0).cancelOperation(20);
      ChatView.access$1800(this$0).startQuery(20, null, (Uri)???, ChatView.access$1900(), null, null, null);
    }
    ChatView.access$2002(this$0, ChatView.access$600(this$0).getAvatar());
    synchronized (ChatView.access$2100(this$0))
    {
      ChatView.access$2202(this$0, true);
      ChatView.access$2300(this$0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */