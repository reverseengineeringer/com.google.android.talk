package com.google.android.talk.videochat;

import android.os.Handler;

class VideoChatActivity$6
  implements Runnable
{
  VideoChatActivity$6(VideoChatActivity paramVideoChatActivity) {}
  
  public void run()
  {
    VideoChatActivity.access$300(this$0).switchCamera(VideoChatActivity.access$3000(this$0));
    VideoChatActivity.access$900(this$0).post(new Runnable()
    {
      public void run()
      {
        this$0.invalidateOptionsMenu();
        synchronized (VideoChatActivity.access$3100(this$0))
        {
          if (access$3200this$0).id != 1) {
            VideoChatActivity.access$3300(this$0, null);
          }
          return;
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */