package com.google.android.talk.videochat;

import android.view.View;

class VideoChatActivity$SpecialEffectManager$BgReplacementManager$2
  implements Runnable
{
  VideoChatActivity$SpecialEffectManager$BgReplacementManager$2(VideoChatActivity.SpecialEffectManager.BgReplacementManager paramBgReplacementManager, boolean paramBoolean) {}
  
  public void run()
  {
    if (VideoChatActivity.SpecialEffectManager.BgReplacementManager.access$4200(this$2) != null) {
      VideoChatActivity.SpecialEffectManager.BgReplacementManager.access$4200(this$2).setVisibility(8);
    }
    if (val$success)
    {
      VideoChatActivity.SpecialEffectManager.access$3500(VideoChatActivity.access$2800(this$2.this$1.this$0));
      return;
    }
    VideoChatActivity.access$000(this$2.this$1.this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.SpecialEffectManager.BgReplacementManager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */