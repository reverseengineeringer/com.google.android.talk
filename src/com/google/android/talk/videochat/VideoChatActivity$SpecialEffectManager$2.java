package com.google.android.talk.videochat;

import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.widget.PopupWindow;

class VideoChatActivity$SpecialEffectManager$2
  implements View.OnLayoutChangeListener
{
  VideoChatActivity$SpecialEffectManager$2(VideoChatActivity.SpecialEffectManager paramSpecialEffectManager, View paramView) {}
  
  public void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    paramInt1 = paramInt3 - paramInt1;
    VideoChatActivity.SpecialEffectManager.access$3600(this$1).update(val$anchor, -paramInt1 / 2 + val$anchor.getWidth() / 2, 0, paramInt1, paramInt4 - paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.SpecialEffectManager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */