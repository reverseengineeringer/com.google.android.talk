package com.google.android.videochat;

import android.app.Notification;

class VideoChatService$3
  implements OngoingNotificationFactory.OngoingNotificationReadyCallback
{
  VideoChatService$3(VideoChatService paramVideoChatService) {}
  
  public void onOngoingNotificationReady(Notification paramNotification)
  {
    if (paramNotification != null)
    {
      flags |= 0x2;
      this$0.startForeground(1, paramNotification);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.VideoChatService.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */