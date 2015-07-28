package com.google.android.talk;

import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.util.Log;

class ChatView$21
  implements TalkApp.SelfAvatarReadyRunnable
{
  ChatView$21(ChatView paramChatView, TalkApp.AccountInfo paramAccountInfo) {}
  
  public void run(DatabaseUtils.AvatarData paramAvatarData)
  {
    paramAvatarData = mAvatarData;
    if (paramAvatarData != null)
    {
      if (val$accountInfo.accountId != ChatView.access$7000(this$0)) {
        Log.d("talk", "[" + this + "] getSelfAvatar runnable called and the account has changed");
      }
    }
    else {
      return;
    }
    ChatView.access$5602(this$0, new BitmapDrawable(BitmapFactory.decodeByteArray(paramAvatarData, 0, paramAvatarData.length)));
    this$0.requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ChatView.21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */