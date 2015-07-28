package com.google.android.talk.videochat;

import android.content.Context;
import android.media.AudioManager;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Vibrator;
import android.util.Log;

public class NotificationRingtonePlayer
{
  private static final String LOG_TAG = "talk:" + NotificationRingtonePlayer.class.getSimpleName();
  private AudioManager mAudioManager;
  Context mContext;
  volatile boolean mContinueVibrating;
  Uri mCustomRingtoneUri;
  private long mFirstRingEventTime = -1L;
  private long mFirstRingStartTime = -1L;
  private boolean mLowVolume;
  private Handler mRingHandler;
  private Worker mRingThread;
  Ringtone mRingtone;
  private int mStreamType = -1;
  String mVibrateWhen;
  Vibrator mVibrator;
  VibratorThread mVibratorThread;
  
  public NotificationRingtonePlayer(Context paramContext)
  {
    mContext = paramContext;
    mAudioManager = ((AudioManager)mContext.getSystemService("audio"));
    mVibrator = ((Vibrator)mContext.getSystemService("vibrator"));
  }
  
  private boolean isRingtonePlaying()
  {
    boolean bool2 = true;
    for (;;)
    {
      try
      {
        if (mRingtone != null)
        {
          bool1 = bool2;
          if (mRingtone.isPlaying()) {}
        }
        else
        {
          if ((mRingHandler == null) || (!mRingHandler.hasMessages(1))) {
            break label52;
          }
          bool1 = bool2;
        }
        return bool1;
      }
      finally {}
      label52:
      boolean bool1 = false;
    }
  }
  
  private static void log(String paramString)
  {
    Log.d(LOG_TAG, paramString);
  }
  
  private void makeLooper()
  {
    if (mRingThread == null)
    {
      mRingThread = new Worker("ringer");
      mRingHandler = new Handler(mRingThread.getLooper())
      {
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
              if ((mRingtone == null) && (!hasMessages(3)))
              {
                localRingtone1 = RingtoneManager.getRingtone(mContext, mCustomRingtoneUri);
                StringBuilder localStringBuilder = new StringBuilder().append("creating ringtone: ").append(mCustomRingtoneUri);
                if (localRingtone1 != null) {
                  break label314;
                }
                ??? = ", failed!";
                NotificationRingtonePlayer.log(???);
              }
              synchronized (NotificationRingtonePlayer.this)
              {
                if (!hasMessages(3))
                {
                  mRingtone = localRingtone1;
                  if ((mRingtone != null) && (mStreamType != -1)) {
                    mRingtone.setStreamType(mStreamType);
                  }
                }
                ??? = mRingtone;
                if (Log.isLoggable("talk", 3)) {
                  NotificationRingtonePlayer.log("mRingHandler: PLAY_RING_ONCE, mRingtone=" + mRingtone);
                }
                if ((??? != null) && (!hasMessages(3)) && (!???.isPlaying())) {
                  if (mLowVolume)
                  {
                    m = ???.getStreamType();
                    k = mAudioManager.getStreamVolume(m);
                    int j = k / 2;
                    i = j;
                    if (j == 0) {
                      i = 1;
                    }
                    j = k;
                    while (j > i)
                    {
                      mAudioManager.adjustStreamVolume(m, -1, 0);
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
            NotificationRingtonePlayer.this.resetVolume(k, i, m);
            for (;;)
            {
              synchronized (NotificationRingtonePlayer.this)
              {
                if (mFirstRingStartTime < 0L) {
                  NotificationRingtonePlayer.access$602(NotificationRingtonePlayer.this, SystemClock.elapsedRealtime());
                }
                return;
              }
              ???.play();
            }
            if (Log.isLoggable("talk", 3)) {
              NotificationRingtonePlayer.log("mRingHandler: STOP_RING...");
            }
            Ringtone localRingtone2 = (Ringtone)obj;
            if (localRingtone2 != null) {
              localRingtone2.stop();
            }
            for (;;)
            {
              getLooper().quit();
              return;
              NotificationRingtonePlayer.log("- STOP_RING with null ringtone!  msg = " + ???);
            }
          }
          catch (InterruptedException localInterruptedException)
          {
            for (;;) {}
          }
        }
      };
    }
  }
  
  private void resetVolume(final int paramInt1, final int paramInt2, final int paramInt3)
  {
    if (isRingtonePlaying())
    {
      mRingHandler.postDelayed(new Runnable()
      {
        public void run()
        {
          try
          {
            Thread.sleep(20L);
            NotificationRingtonePlayer.this.resetVolume(paramInt1, paramInt2, paramInt3);
            return;
          }
          catch (InterruptedException localInterruptedException)
          {
            for (;;) {}
          }
        }
      }, 200L);
      return;
    }
    while (paramInt2 < paramInt1)
    {
      mAudioManager.adjustStreamVolume(paramInt3, 1, 0);
      paramInt2 += 1;
    }
    stopRing();
  }
  
  public void ring()
  {
    if (Log.isLoggable("talk", 3)) {
      log("ring()...");
    }
    for (;;)
    {
      try
      {
        if ((shouldVibrate()) && (mVibratorThread == null))
        {
          mContinueVibrating = true;
          mVibratorThread = new VibratorThread(null);
          if (Log.isLoggable("talk", 3)) {
            log("- starting vibrator...");
          }
          mVibratorThread.start();
        }
        if ((mStreamType != -1) && (mAudioManager.getStreamVolume(mStreamType) == 0))
        {
          if (Log.isLoggable("talk", 3)) {
            log("skipping ring because volume is zero");
          }
          return;
        }
        makeLooper();
        if (mFirstRingEventTime < 0L)
        {
          mFirstRingEventTime = SystemClock.elapsedRealtime();
          mRingHandler.sendEmptyMessage(1);
          return;
        }
      }
      finally {}
      if (mFirstRingStartTime > 0L)
      {
        if (Log.isLoggable("talk", 3)) {
          log("delaying ring by " + (mFirstRingStartTime - mFirstRingEventTime));
        }
        mRingHandler.sendEmptyMessageDelayed(1, mFirstRingStartTime - mFirstRingEventTime);
      }
      else
      {
        mFirstRingEventTime = SystemClock.elapsedRealtime();
      }
    }
  }
  
  public void setCustomRingtoneUri(Uri paramUri)
  {
    if (paramUri != null) {
      mCustomRingtoneUri = paramUri;
    }
  }
  
  public void setLowVolume(boolean paramBoolean)
  {
    mLowVolume = paramBoolean;
  }
  
  public void setStreamType(int paramInt)
  {
    log("Setting stream type to " + paramInt);
    mStreamType = paramInt;
  }
  
  public void setVibrateWhen(String paramString)
  {
    mVibrateWhen = paramString;
  }
  
  boolean shouldVibrate()
  {
    if (mVibrateWhen == null) {}
    label69:
    label72:
    for (;;)
    {
      return false;
      boolean bool = mVibrateWhen.equals("always");
      int i;
      if ((!bool) && (mVibrateWhen.equals("silent")))
      {
        i = 1;
        if (mAudioManager.getRingerMode() != 1) {
          break label69;
        }
      }
      for (int j = 1;; j = 0)
      {
        if ((!bool) && ((i == 0) || (j == 0))) {
          break label72;
        }
        return true;
        i = 0;
        break;
      }
    }
  }
  
  /* Error */
  public void stopRing()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc -80
    //   4: iconst_3
    //   5: invokestatic 180	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   8: ifeq +8 -> 16
    //   11: ldc -1
    //   13: invokestatic 101	com/google/android/talk/videochat/NotificationRingtonePlayer:log	(Ljava/lang/String;)V
    //   16: aload_0
    //   17: getfield 130	com/google/android/talk/videochat/NotificationRingtonePlayer:mRingHandler	Landroid/os/Handler;
    //   20: ifnull +108 -> 128
    //   23: aload_0
    //   24: getfield 130	com/google/android/talk/videochat/NotificationRingtonePlayer:mRingHandler	Landroid/os/Handler;
    //   27: aconst_null
    //   28: invokevirtual 259	android/os/Handler:removeCallbacksAndMessages	(Ljava/lang/Object;)V
    //   31: aload_0
    //   32: getfield 130	com/google/android/talk/videochat/NotificationRingtonePlayer:mRingHandler	Landroid/os/Handler;
    //   35: iconst_3
    //   36: invokevirtual 263	android/os/Handler:obtainMessage	(I)Landroid/os/Message;
    //   39: astore_1
    //   40: aload_1
    //   41: aload_0
    //   42: getfield 123	com/google/android/talk/videochat/NotificationRingtonePlayer:mRingtone	Landroid/media/Ringtone;
    //   45: putfield 269	android/os/Message:obj	Ljava/lang/Object;
    //   48: aload_0
    //   49: getfield 130	com/google/android/talk/videochat/NotificationRingtonePlayer:mRingHandler	Landroid/os/Handler;
    //   52: aload_1
    //   53: invokevirtual 273	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   56: pop
    //   57: aload_0
    //   58: aconst_null
    //   59: putfield 145	com/google/android/talk/videochat/NotificationRingtonePlayer:mRingThread	Lcom/google/android/talk/videochat/NotificationRingtonePlayer$Worker;
    //   62: aload_0
    //   63: aconst_null
    //   64: putfield 130	com/google/android/talk/videochat/NotificationRingtonePlayer:mRingHandler	Landroid/os/Handler;
    //   67: aload_0
    //   68: aconst_null
    //   69: putfield 123	com/google/android/talk/videochat/NotificationRingtonePlayer:mRingtone	Landroid/media/Ringtone;
    //   72: aload_0
    //   73: ldc2_w 69
    //   76: putfield 72	com/google/android/talk/videochat/NotificationRingtonePlayer:mFirstRingEventTime	J
    //   79: aload_0
    //   80: ldc2_w 69
    //   83: putfield 74	com/google/android/talk/videochat/NotificationRingtonePlayer:mFirstRingStartTime	J
    //   86: aload_0
    //   87: getfield 187	com/google/android/talk/videochat/NotificationRingtonePlayer:mVibratorThread	Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;
    //   90: ifnull +28 -> 118
    //   93: ldc -80
    //   95: iconst_3
    //   96: invokestatic 180	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   99: ifeq +9 -> 108
    //   102: ldc_w 275
    //   105: invokestatic 101	com/google/android/talk/videochat/NotificationRingtonePlayer:log	(Ljava/lang/String;)V
    //   108: aload_0
    //   109: iconst_0
    //   110: putfield 189	com/google/android/talk/videochat/NotificationRingtonePlayer:mContinueVibrating	Z
    //   113: aload_0
    //   114: aconst_null
    //   115: putfield 187	com/google/android/talk/videochat/NotificationRingtonePlayer:mVibratorThread	Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;
    //   118: aload_0
    //   119: getfield 96	com/google/android/talk/videochat/NotificationRingtonePlayer:mVibrator	Landroid/os/Vibrator;
    //   122: invokevirtual 278	android/os/Vibrator:cancel	()V
    //   125: aload_0
    //   126: monitorexit
    //   127: return
    //   128: ldc_w 280
    //   131: invokestatic 101	com/google/android/talk/videochat/NotificationRingtonePlayer:log	(Ljava/lang/String;)V
    //   134: goto -48 -> 86
    //   137: astore_1
    //   138: aload_0
    //   139: monitorexit
    //   140: aload_1
    //   141: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	142	0	this	NotificationRingtonePlayer
    //   39	14	1	localMessage	Message
    //   137	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	16	137	finally
    //   16	86	137	finally
    //   86	108	137	finally
    //   108	118	137	finally
    //   118	127	137	finally
    //   128	134	137	finally
    //   138	140	137	finally
  }
  
  private class VibratorThread
    extends Thread
  {
    private VibratorThread() {}
    
    public void run()
    {
      while (mContinueVibrating)
      {
        mVibrator.vibrate(1000L);
        SystemClock.sleep(2000L);
      }
    }
  }
  
  private class Worker
    implements Runnable
  {
    private final Object mLock = new Object();
    private Looper mLooper;
    
    Worker(String paramString)
    {
      new Thread(null, this, paramString).start();
      this$1 = mLock;
      try
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
      finally {}
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
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.NotificationRingtonePlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */