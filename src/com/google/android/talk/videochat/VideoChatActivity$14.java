package com.google.android.talk.videochat;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.google.android.talk.FeatureManager;

class VideoChatActivity$14
  implements View.OnTouchListener
{
  VideoChatActivity$14(VideoChatActivity paramVideoChatActivity) {}
  
  public boolean onTouch(View arg1, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1)
    {
      int i = (int)paramMotionEvent.getX();
      int j = (int)paramMotionEvent.getY();
      synchronized (VideoChatActivity.SpecialEffectManager.access$4500(VideoChatActivity.access$2800(this$0)))
      {
        if ((VideoChatActivity.SpecialEffectManager.access$200(VideoChatActivity.access$2800(this$0))) && (VideoChatActivity.access$300(this$0).getRemoteFrameRect().contains(i, j)))
        {
          VideoChatActivity.SpecialEffectManager.access$3500(VideoChatActivity.access$2800(this$0));
          return true;
        }
        if (VideoChatActivity.access$300(this$0).getSelfFrameRect().contains(i, j))
        {
          boolean bool2 = false;
          boolean bool1 = bool2;
          if (!VideoChatActivity.SpecialEffectManager.access$200(VideoChatActivity.access$2800(this$0)))
          {
            bool1 = bool2;
            if (FeatureManager.areAnyEffectsAvailable())
            {
              VideoChatActivity.SpecialEffectManager.access$3400(VideoChatActivity.access$2800(this$0));
              bool1 = true;
            }
          }
          if (VideoChatActivity.access$300(this$0).getEffectsController().maxImageStabilizationEnabled())
          {
            VideoChatActivity.access$6500(this$0);
            bool1 = true;
          }
          return bool1;
        }
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */