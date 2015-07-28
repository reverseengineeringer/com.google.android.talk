package com.google.android.talk;

import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;

class AlertNotificationFullScreenActivity$7
  implements ContactInfoQuery.ContactInfoQueryCallback
{
  AlertNotificationFullScreenActivity$7(AlertNotificationFullScreenActivity paramAlertNotificationFullScreenActivity, ContactInfoQuery paramContactInfoQuery1, ContactInfoQuery paramContactInfoQuery2) {}
  
  public void onContactInfoLoaded()
  {
    this$0.mNickName = val$contactInfoQuery.getNickName();
    AlertNotificationFullScreenActivity.access$802(this$0, ((BitmapDrawable)val$contactInfoQuery.getAvatar()).getBitmap());
    AlertNotificationFullScreenActivity.access$900(this$0).setImageBitmap(AlertNotificationFullScreenActivity.access$800(this$0));
    if (val$existingCallNickQuery != null)
    {
      val$existingCallNickQuery.startQueryForContactInfo();
      return;
    }
    AlertNotificationFullScreenActivity.access$700(this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AlertNotificationFullScreenActivity.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */