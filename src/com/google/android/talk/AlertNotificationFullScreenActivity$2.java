package com.google.android.talk;

import com.google.android.videochat.VideoChatService.HardBinder;
import com.google.android.videochat.VideoChatServiceBinder.ServiceBoundCallback;

class AlertNotificationFullScreenActivity$2
  implements VideoChatServiceBinder.ServiceBoundCallback
{
  AlertNotificationFullScreenActivity$2(AlertNotificationFullScreenActivity paramAlertNotificationFullScreenActivity) {}
  
  public void onServiceBound(VideoChatService.HardBinder paramHardBinder)
  {
    AlertNotificationFullScreenActivity.access$102(this$0, paramHardBinder.getCallSession());
    AlertNotificationFullScreenActivity.access$200(this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AlertNotificationFullScreenActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */