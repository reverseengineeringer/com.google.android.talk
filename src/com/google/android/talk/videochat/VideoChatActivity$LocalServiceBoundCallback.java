package com.google.android.talk.videochat;

import android.net.Uri;
import com.google.android.videochat.CallSession;
import com.google.android.videochat.VideoChatService.HardBinder;
import com.google.android.videochat.VideoChatServiceBinder.ServiceBoundCallback;

class VideoChatActivity$LocalServiceBoundCallback
  implements VideoChatServiceBinder.ServiceBoundCallback
{
  private VideoChatActivity$LocalServiceBoundCallback(VideoChatActivity paramVideoChatActivity) {}
  
  public void onServiceBound(VideoChatService.HardBinder arg1)
  {
    if (VideoChatActivity.access$5700(this$0)) {
      return;
    }
    VideoChatActivity.access$5802(this$0, ???.getCallSession());
    VideoChatActivity.access$4900(this$0);
    VideoChatActivity.access$5900(this$0);
    for (;;)
    {
      synchronized (VideoChatActivity.access$5600())
      {
        VideoChatActivity.access$5600().setActivity(this$0);
        VideoChatActivity.access$5600().setJid(VideoChatActivity.access$1100(this$0));
        if (VideoChatActivity.access$6000(this$0) != null)
        {
          VideoChatActivity.access$6000(this$0).run();
          VideoChatActivity.access$6002(this$0, null);
        }
        if (VideoChatActivity.access$6100(this$0) == null) {
          break;
        }
        if (access$6100this$0).id == 3)
        {
          ??? = (Uri)access$6100this$0).param;
          VideoChatActivity.access$2300(this$0, "Received URI from gallery for background: " + ???.toString());
          VideoChatActivity.SpecialEffectManager.access$3800(VideoChatActivity.access$2800(this$0), ???);
          VideoChatActivity.access$6102(this$0, null);
          return;
        }
      }
      VideoChatActivity.access$3300(this$0, VideoChatActivity.access$6100(this$0));
    }
    VideoChatActivity.Effect localEffect = (VideoChatActivity.Effect)VideoChatActivity.access$5800(this$0).getCallStorage("CALL_CURRENT_EFFECT");
    if (localEffect == null) {
      ??? = VideoChatActivity.access$6200(this$0);
    }
    for (;;)
    {
      VideoChatActivity.access$3300(this$0, ???);
      return;
      ??? = localEffect;
      if (id == 3) {
        ??? = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.LocalServiceBoundCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */