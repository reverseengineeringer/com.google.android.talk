package com.google.android.talk.videochat;

import android.app.ActionBar;

class VideoChatActivity$5
  implements Runnable
{
  VideoChatActivity$5(VideoChatActivity paramVideoChatActivity) {}
  
  public void run()
  {
    if ((VideoChatActivity.access$2700(this$0).isShowing()) && (!VideoChatActivity.SpecialEffectManager.access$200(VideoChatActivity.access$2800(this$0)))) {
      VideoChatActivity.access$2900(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */