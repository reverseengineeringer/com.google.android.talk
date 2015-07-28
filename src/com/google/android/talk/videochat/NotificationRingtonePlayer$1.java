package com.google.android.talk.videochat;

import android.media.AudioManager;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;

class NotificationRingtonePlayer$1
  extends Handler
{
  NotificationRingtonePlayer$1(NotificationRingtonePlayer paramNotificationRingtonePlayer, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message arg1)
  {
    int m;
    int k;
    int i;
    switch (what)
    {
    case 2: 
    default: 
    case 1: 
      for (;;)
      {
        return;
        Ringtone localRingtone1;
        if ((this$0.mRingtone == null) && (!hasMessages(3)))
        {
          localRingtone1 = RingtoneManager.getRingtone(this$0.mContext, this$0.mCustomRingtoneUri);
          StringBuilder localStringBuilder = new StringBuilder().append("creating ringtone: ").append(this$0.mCustomRingtoneUri);
          if (localRingtone1 != null) {
            break label314;
          }
          ??? = ", failed!";
          NotificationRingtonePlayer.access$100(???);
        }
        synchronized (this$0)
        {
          if (!hasMessages(3))
          {
            this$0.mRingtone = localRingtone1;
            if ((this$0.mRingtone != null) && (NotificationRingtonePlayer.access$200(this$0) != -1)) {
              this$0.mRingtone.setStreamType(NotificationRingtonePlayer.access$200(this$0));
            }
          }
          ??? = this$0.mRingtone;
          if (Log.isLoggable("talk", 3)) {
            NotificationRingtonePlayer.access$100("mRingHandler: PLAY_RING_ONCE, mRingtone=" + this$0.mRingtone);
          }
          if ((??? != null) && (!hasMessages(3)) && (!???.isPlaying())) {
            if (NotificationRingtonePlayer.access$300(this$0))
            {
              m = ???.getStreamType();
              k = NotificationRingtonePlayer.access$400(this$0).getStreamVolume(m);
              int j = k / 2;
              i = j;
              if (j == 0) {
                i = 1;
              }
              j = k;
              while (j > i)
              {
                NotificationRingtonePlayer.access$400(this$0).adjustStreamVolume(m, -1, 0);
                j -= 1;
                continue;
                label314:
                ??? = "";
              }
            }
          }
        }
      }
    }
    try
    {
      Thread.sleep(20L);
      ???.play();
      NotificationRingtonePlayer.access$500(this$0, k, i, m);
      for (;;)
      {
        synchronized (this$0)
        {
          if (NotificationRingtonePlayer.access$600(this$0) < 0L) {
            NotificationRingtonePlayer.access$602(this$0, SystemClock.elapsedRealtime());
          }
          return;
        }
        ???.play();
      }
      if (Log.isLoggable("talk", 3)) {
        NotificationRingtonePlayer.access$100("mRingHandler: STOP_RING...");
      }
      Ringtone localRingtone2 = (Ringtone)obj;
      if (localRingtone2 != null) {
        localRingtone2.stop();
      }
      for (;;)
      {
        getLooper().quit();
        return;
        NotificationRingtonePlayer.access$100("- STOP_RING with null ringtone!  msg = " + ???);
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.NotificationRingtonePlayer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */