package com.google.android.talk.videochat;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import com.google.android.videochat.CallState;
import com.google.android.videochat.CallStateClient;
import com.google.android.videochat.util.LogUtil;

public class RingerService
  extends Service
{
  private RingerCallStateClient mCallStateClient;
  private Handler mHandler;
  private String mRemoteBareJid;
  private CallRinger mRinger;
  private Object mRingerLock = new Object();
  
  public static void forceStopRinger(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.android.talk.videochat.ACTION_STOP_RINGER");
    localIntent.setClass(paramContext, RingerService.class);
    paramContext.startService(localIntent);
  }
  
  public static void startServiceForIncomingRinger(Context paramContext, String paramString, long paramLong)
  {
    Intent localIntent = new Intent("com.google.android.talk.videochat.ACTION_START_INCOMING_RINGER");
    localIntent.putExtra("remote_bare_jid", paramString);
    localIntent.putExtra("account_id", paramLong);
    localIntent.setClass(paramContext, RingerService.class);
    paramContext.startService(localIntent);
  }
  
  public static void startServiceForOutgoingRinger(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent("com.google.android.talk.videochat.ACTION_START_OUTGOING_RINGER");
    localIntent.putExtra("remote_bare_jid", paramString);
    localIntent.setClass(paramContext, RingerService.class);
    paramContext.startService(localIntent);
  }
  
  private void stopRingAndFinish(int paramInt)
  {
    synchronized (mRingerLock)
    {
      if (mRinger != null)
      {
        LogUtil.LOGD("Talk:RingerService", "RingerService: stopRing");
        mRinger.stopRing();
        mRinger = null;
      }
      LogUtil.LOGD("Talk:RingerService", "RingerService: stopSelf");
      stopSelf(paramInt);
      return;
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    LogUtil.LOGD("Talk:RingerService", "RingerService onCreate");
    mHandler = new Handler();
    mCallStateClient = new RingerCallStateClient(this);
    mCallStateClient.startListening();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    LogUtil.LOGD("Talk:RingerService", "RingerService onDestroy");
    mCallStateClient.stopListening();
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    super.onStartCommand(paramIntent, paramInt1, paramInt2);
    if (paramIntent == null)
    {
      stopSelf();
      return 2;
    }
    String str = paramIntent.getAction();
    LogUtil.LOGD("Talk:RingerService", "onStartCommand: action=" + str);
    if ("com.google.android.talk.videochat.ACTION_STOP_RINGER".equals(str))
    {
      stopRingAndFinish(paramInt2);
      return 2;
    }
    for (;;)
    {
      synchronized (mRingerLock)
      {
        if (mRinger == null)
        {
          if (!"com.google.android.talk.videochat.ACTION_START_OUTGOING_RINGER".equals(str)) {
            break label152;
          }
          mRemoteBareJid = paramIntent.getStringExtra("remote_bare_jid");
          mRinger = new OutgoingCallRinger(this, mHandler);
          LogUtil.LOGD("Talk:RingerService", "RingerService: startRing");
          if (mRinger != null) {
            mRinger.startRing();
          }
        }
        return 2;
      }
      label152:
      if ("com.google.android.talk.videochat.ACTION_START_INCOMING_RINGER".equals(str))
      {
        long l = paramIntent.getLongExtra("account_id", -1L);
        mRemoteBareJid = paramIntent.getStringExtra("remote_bare_jid");
        mRinger = new IncomingCallRinger(this, mHandler, l);
      }
    }
  }
  
  private class RingerCallStateClient
    extends CallStateClient
  {
    public RingerCallStateClient(Context paramContext)
    {
      super();
    }
    
    public void onCallStateUpdate(String paramString, CallState paramCallState, boolean paramBoolean, Object paramObject)
    {
      if (paramCallState != null) {
        switch (libjingleCallState)
        {
        }
      }
      do
      {
        return;
      } while (!paramString.equals(mRemoteBareJid));
      RingerService.forceStopRinger(RingerService.this);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.RingerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */