package com.google.android.talk.videochat;

class NotificationRingtonePlayer$2
  implements Runnable
{
  NotificationRingtonePlayer$2(NotificationRingtonePlayer paramNotificationRingtonePlayer, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void run()
  {
    try
    {
      Thread.sleep(20L);
      NotificationRingtonePlayer.access$500(this$0, val$origVolume, val$newVolume, val$streamType);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.NotificationRingtonePlayer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */