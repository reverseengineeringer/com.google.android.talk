package com.google.android.talk.videochat;

import android.os.SystemClock;
import android.os.Vibrator;

class NotificationRingtonePlayer$VibratorThread
  extends Thread
{
  private NotificationRingtonePlayer$VibratorThread(NotificationRingtonePlayer paramNotificationRingtonePlayer) {}
  
  public void run()
  {
    while (this$0.mContinueVibrating)
    {
      this$0.mVibrator.vibrate(1000L);
      SystemClock.sleep(2000L);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.NotificationRingtonePlayer.VibratorThread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */