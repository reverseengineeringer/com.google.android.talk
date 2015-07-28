package com.google.android.talk;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import com.google.android.talk.videochat.AudioFocusManager;
import com.google.android.talk.videochat.CallTaskDispatcher;
import com.google.android.talk.videochat.CallTaskDispatcher.CallTask;
import com.google.android.talk.videochat.RingerService;
import com.google.android.videochat.CallSession;
import com.google.android.videochat.CallState;
import com.google.android.videochat.CallStateClient;
import com.google.android.videochat.util.LogUtil;

public class GlobalCallStateMonitor
  extends CallStateClient
{
  private AudioFocusManager mAudioFocusManager;
  private String mCurrentCallRemoteBareJid;
  private PhoneStateListener mPhoneStateListener = new PhoneStateListener()
  {
    public void onCallStateChanged(int paramAnonymousInt, String paramAnonymousString)
    {
      if (paramAnonymousInt == 2) {
        new CallTaskDispatcher(GlobalCallStateMonitor.access$100(GlobalCallStateMonitor.this)).postCallTask(new CallTaskDispatcher.CallTask()
        {
          public void runTask(CallSession paramAnonymous2CallSession)
          {
            LogUtil.LOGD("Talk:GlobalCallStateMonitor", "ending Talk call due to a phone call");
            paramAnonymous2CallSession.terminateCall(mCurrentCallRemoteBareJid);
          }
        });
      }
    }
  };
  
  public GlobalCallStateMonitor(Context paramContext)
  {
    super(paramContext);
    mAudioFocusManager = AudioFocusManager.getInstance(paramContext);
  }
  
  private void onCallEnded()
  {
    unregisterForPhoneStateNotifications();
  }
  
  private void onCallStarted()
  {
    registerForPhoneStateNotifications();
  }
  
  private void registerForPhoneStateNotifications()
  {
    ((TelephonyManager)mContext.getSystemService("phone")).listen(mPhoneStateListener, 32);
  }
  
  private void unregisterForPhoneStateNotifications()
  {
    ((TelephonyManager)mContext.getSystemService("phone")).listen(mPhoneStateListener, 0);
  }
  
  public void onCallStateUpdate(String paramString, CallState paramCallState, boolean paramBoolean, Object paramObject)
  {
    LogUtil.LOGV("Talk:GlobalCallStateMonitor", "Got state " + libjingleCallState + " for " + remoteBareJid + ", full=" + remoteFullJid + ", isRequestReply=" + paramBoolean);
    switch (libjingleCallState)
    {
    }
    do
    {
      do
      {
        return;
        mCurrentCallRemoteBareJid = paramString;
        mAudioFocusManager.requestAudioFocus(0, 3);
        RingerService.startServiceForOutgoingRinger(mContext, paramString);
        return;
      } while (mCurrentCallRemoteBareJid != null);
      mCurrentCallRemoteBareJid = paramString;
      mAudioFocusManager.requestAudioFocus(2, 1);
      return;
      mCurrentCallRemoteBareJid = paramString;
      mAudioFocusManager.requestAudioFocus(0, 3);
      return;
      onCallStarted();
      return;
    } while (!paramString.equals(mCurrentCallRemoteBareJid));
    mCurrentCallRemoteBareJid = null;
    mAudioFocusManager.abandonAudioFocus();
    onCallEnded();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.GlobalCallStateMonitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */