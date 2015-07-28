package com.google.android.talk.videochat;

class VideoChatActivity$9
  implements Runnable
{
  VideoChatActivity$9(VideoChatActivity paramVideoChatActivity) {}
  
  public void run()
  {
    if ("initiate".equals(VideoChatActivity.access$5000(this$0))) {
      VideoChatActivity.access$5100(this$0);
    }
    for (;;)
    {
      VideoChatActivity.access$5302(this$0, false);
      return;
      VideoChatActivity.access$5200(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */