package com.google.android.talk.videochat;

import com.google.android.talk.TalkApp;
import com.google.android.videochat.RemoteRenderer;

class VideoChatActivity$7
  implements GlView.GlViewInitializedCallback
{
  VideoChatActivity$7(VideoChatActivity paramVideoChatActivity) {}
  
  public void complete()
  {
    VideoChatActivity.access$2300(this$0, "glVideoView complete()");
    synchronized (VideoChatActivity.access$4600(this$0))
    {
      RemoteRenderer localRemoteRenderer = VideoChatActivity.access$300(this$0).getRemoteRenderer();
      if (VideoChatActivity.access$4700(this$0) != localRemoteRenderer)
      {
        if (VideoChatActivity.access$4700(this$0) != null) {
          TalkApp.LOGW("talk", "[VideoChatActivity] overriding existing remote renderer " + VideoChatActivity.access$4700(this$0));
        }
        VideoChatActivity.access$4702(this$0, localRemoteRenderer);
        VideoChatActivity.access$4802(this$0, false);
      }
      VideoChatActivity.access$4900(this$0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */