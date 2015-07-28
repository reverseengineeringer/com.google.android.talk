package com.google.android.talk.videochat;

import android.widget.ImageView;
import com.google.android.talk.ContactInfoQuery;
import com.google.android.talk.ContactInfoQuery.ContactInfoQueryCallback;

class VideoChatActivity$8
  implements ContactInfoQuery.ContactInfoQueryCallback
{
  VideoChatActivity$8(VideoChatActivity paramVideoChatActivity) {}
  
  public void onContactInfoLoaded()
  {
    ((ImageView)this$0.findViewById(2131755178)).setImageDrawable(this$0.mAvatarQuery.getAvatar());
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */