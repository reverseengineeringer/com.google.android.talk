package com.google.android.talk.videochat;

import android.os.Handler;

class VideoChatActivity$3
  implements GlView.InitialCameraFrameCallback
{
  VideoChatActivity$3(VideoChatActivity paramVideoChatActivity) {}
  
  public void onInitialFrame()
  {
    synchronized (VideoChatActivity.access$400(this$0))
    {
      VideoChatActivity.access$502(this$0, true);
      if (VideoChatActivity.access$600(this$0) != VideoChatActivity.access$700(this$0)) {
        VideoChatActivity.access$900(this$0).post(new Runnable()
        {
          public void run()
          {
            VideoChatActivity.access$800(this$0, VideoChatActivity.access$600(this$0), VideoChatActivity.access$700(this$0));
          }
        });
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */