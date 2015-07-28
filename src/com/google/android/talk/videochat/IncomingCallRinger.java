package com.google.android.talk.videochat;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.telephony.TelephonyManager;
import com.google.android.gsf.TalkContract.AccountSettings.QueryMap;
import com.google.android.talk.SettingsCache;
import com.google.android.talk.TalkApp;

public class IncomingCallRinger
  implements CallRinger
{
  private Handler mHandler;
  private int mRingCount;
  private Runnable mRingDelayRunnable = new Runnable()
  {
    public void run()
    {
      log("mRingDelayRunnable.run");
      IncomingCallRinger.this.ringAndRepeat();
    }
  };
  private final NotificationRingtonePlayer mRinger;
  private boolean mRinging;
  private String mVibrateWhen;
  
  public IncomingCallRinger(Context paramContext, Handler paramHandler, long paramLong)
  {
    mRinger = new NotificationRingtonePlayer(paramContext);
    mHandler = paramHandler;
    paramHandler = SettingsCache.getInstance().getSettingsMap(paramLong);
    mVibrateWhen = paramHandler.getVideoVibrateWhen();
    mRinger.setVibrateWhen(mVibrateWhen);
    mRinger.setCustomRingtoneUri(Uri.parse(paramHandler.getVideoRingtoneURI()));
    if (((TelephonyManager)paramContext.getSystemService("phone")).getPhoneType() == 0)
    {
      mRinger.setStreamType(5);
      return;
    }
    mRinger.setStreamType(2);
  }
  
  private void ringAndRepeat()
  {
    synchronized (mRinger)
    {
      if (!mRinging) {
        return;
      }
      mRingCount += 1;
      mRinger.ring();
      log("ringAndRepeat: " + mRingCount);
      mHandler.postDelayed(mRingDelayRunnable, 2000L);
      return;
    }
  }
  
  protected void log(String paramString)
  {
    TalkApp.LOGD("talk", "[IncomingCallRinger] " + paramString);
  }
  
  public void startRing()
  {
    mRingCount = 0;
    synchronized (mRinger)
    {
      mRinging = true;
      ringAndRepeat();
      return;
    }
  }
  
  public void stopRing()
  {
    synchronized (mRinger)
    {
      log("stopRing");
      mRinger.stopRing();
      mRinging = false;
      mHandler.removeCallbacks(mRingDelayRunnable);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.IncomingCallRinger
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */