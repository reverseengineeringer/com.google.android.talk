package com.google.android.talk.videochat;

import android.app.ActionBar;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;

class VideoChatActivity$13
  implements View.OnClickListener
{
  VideoChatActivity$13(VideoChatActivity paramVideoChatActivity) {}
  
  public void onClick(View arg1)
  {
    int i = 0;
    if (VideoChatActivity.access$1400(this$0).getVisibility() != 8)
    {
      VideoChatActivity.access$2600(this$0);
      i = 1;
    }
    synchronized (VideoChatActivity.SpecialEffectManager.access$4500(VideoChatActivity.access$2800(this$0)))
    {
      if (!VideoChatActivity.SpecialEffectManager.access$200(VideoChatActivity.access$2800(this$0)))
      {
        if (!VideoChatActivity.access$2700(this$0).isShowing()) {
          break label75;
        }
        VideoChatActivity.access$2900(this$0);
      }
      label75:
      while (i != 0) {
        return;
      }
      VideoChatActivity.access$000(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */