package com.google.android.talk;

import android.app.Dialog;
import android.graphics.drawable.Drawable;

class SubscriptionScreen$3
  implements ContactInfoQuery.ContactInfoQueryCallback
{
  SubscriptionScreen$3(SubscriptionScreen paramSubscriptionScreen, ContactInfoQuery paramContactInfoQuery) {}
  
  public void onContactInfoLoaded()
  {
    if (!this$0.isFinishing())
    {
      Drawable localDrawable = val$contactInfoQuery.getAvatar();
      SubscriptionScreen.access$302(this$0, SubscriptionScreen.access$400(this$0, localDrawable));
      SubscriptionScreen.access$300(this$0).show();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SubscriptionScreen.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */