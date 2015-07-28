package com.google.android.talk.videochat;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class VideoChatActivity$SpecialEffectManager$6
  implements AdapterView.OnItemClickListener
{
  VideoChatActivity$SpecialEffectManager$6(VideoChatActivity.SpecialEffectManager paramSpecialEffectManager) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    VideoChatActivity.SpecialEffectManager.access$3700(this$1);
    VideoChatActivity.access$3300(this$1.this$0, new VideoChatActivity.Effect(1, paramView.getTag()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.SpecialEffectManager.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */