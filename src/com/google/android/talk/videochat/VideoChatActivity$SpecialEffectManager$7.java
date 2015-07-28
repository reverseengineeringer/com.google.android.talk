package com.google.android.talk.videochat;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

class VideoChatActivity$SpecialEffectManager$7
  implements CompoundButton.OnCheckedChangeListener
{
  VideoChatActivity$SpecialEffectManager$7(VideoChatActivity.SpecialEffectManager paramSpecialEffectManager) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (!paramBoolean) {
      this$1.clearSpecialEffects();
    }
    for (;;)
    {
      VideoChatActivity.SpecialEffectManager.access$3700(VideoChatActivity.access$2800(this$1.this$0));
      return;
      VideoChatActivity.access$3300(this$1.this$0, new VideoChatActivity.Effect(2, Integer.valueOf(0)));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.SpecialEffectManager.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */