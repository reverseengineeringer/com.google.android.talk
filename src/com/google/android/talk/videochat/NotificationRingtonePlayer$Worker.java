package com.google.android.talk.videochat;

import android.os.Looper;

class NotificationRingtonePlayer$Worker
  implements Runnable
{
  private final Object mLock = new Object();
  private Looper mLooper;
  
  NotificationRingtonePlayer$Worker(NotificationRingtonePlayer arg1, String paramString)
  {
    new Thread(null, this, paramString).start();
    synchronized (mLock)
    {
      for (;;)
      {
        paramString = mLooper;
        if (paramString != null) {
          break;
        }
        try
        {
          mLock.wait();
        }
        catch (InterruptedException paramString) {}
      }
      return;
    }
  }
  
  public Looper getLooper()
  {
    return mLooper;
  }
  
  public void run()
  {
    synchronized (mLock)
    {
      Looper.prepare();
      mLooper = Looper.myLooper();
      mLock.notifyAll();
      Looper.loop();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.NotificationRingtonePlayer.Worker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */