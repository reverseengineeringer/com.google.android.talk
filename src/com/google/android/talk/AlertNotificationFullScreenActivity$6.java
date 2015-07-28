package com.google.android.talk;

class AlertNotificationFullScreenActivity$6
  implements ContactInfoQuery.ContactInfoQueryCallback
{
  AlertNotificationFullScreenActivity$6(AlertNotificationFullScreenActivity paramAlertNotificationFullScreenActivity, ContactInfoQuery paramContactInfoQuery) {}
  
  public void onContactInfoLoaded()
  {
    this$0.mExistingCallNickName = val$existingCallNickQuery.getNickName();
    AlertNotificationFullScreenActivity.access$700(this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AlertNotificationFullScreenActivity.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */