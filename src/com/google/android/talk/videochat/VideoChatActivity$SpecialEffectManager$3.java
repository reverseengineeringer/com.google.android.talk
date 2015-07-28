package com.google.android.talk.videochat;

import android.view.View;
import android.widget.SimpleAdapter.ViewBinder;

class VideoChatActivity$SpecialEffectManager$3
  implements SimpleAdapter.ViewBinder
{
  VideoChatActivity$SpecialEffectManager$3(VideoChatActivity.SpecialEffectManager paramSpecialEffectManager) {}
  
  public boolean setViewValue(View paramView, Object paramObject, String paramString)
  {
    if (paramView.getId() == 2131755154)
    {
      paramView.setTag(paramObject);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.SpecialEffectManager.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */