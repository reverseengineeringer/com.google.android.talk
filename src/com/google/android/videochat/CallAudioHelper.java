package com.google.android.videochat;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import android.telephony.TelephonyManager;
import com.google.android.videochat.util.LogUtil;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

class CallAudioHelper
{
  private CallState.AudioDeviceState mAudioDeviceState = CallState.AudioDeviceState.SPEAKERPHONE_ON;
  private Set<CallSession.AudioDevice> mAudioDevices = new HashSet();
  private AudioManager mAudioManager;
  private BroadcastReceiver mBluetoothReceiver = new BroadcastReceiver()
  {
    private void onBluetoothDisconnected()
    {
      if ((mAudioDeviceState == CallState.AudioDeviceState.BLUETOOTH_ON) || (mAudioDeviceState == CallState.AudioDeviceState.BLUETOOTH_TURNING_ON) || (mAudioDeviceState == CallState.AudioDeviceState.BLUETOOTH_TURNING_OFF)) {
        CallAudioHelper.this.usePendingAudioDeviceState();
      }
    }
    
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = paramAnonymousIntent.getAction();
      int i;
      if (paramAnonymousContext.equals("android.media.SCO_AUDIO_STATE_CHANGED"))
      {
        i = paramAnonymousIntent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", 0);
        CallAudioHelper.this.log("BluetoothReceiver.onReceive: got ACTION_SCO_AUDIO_STATE_CHANGED, audioState=" + i + ", isInitialSticky=" + isInitialStickyBroadcast());
        if (i == 1) {
          if (mAudioDeviceState != CallState.AudioDeviceState.BLUETOOTH_ON)
          {
            CallAudioHelper.access$202(CallAudioHelper.this, CallState.AudioDeviceState.BLUETOOTH_ON);
            CallAudioHelper.this.cancelBluetoothTimer();
            mAudioDevices.add(CallSession.AudioDevice.BLUETOOTH_HEADSET);
            CallAudioHelper.this.reportUpdate();
          }
        }
      }
      do
      {
        do
        {
          do
          {
            return;
          } while ((i != 0) || (isInitialStickyBroadcast()));
          CallAudioHelper.this.cancelBluetoothTimer();
          onBluetoothDisconnected();
          CallAudioHelper.this.reportUpdate();
          return;
          if (!paramAnonymousContext.equals("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED")) {
            break;
          }
          i = paramAnonymousIntent.getIntExtra("android.bluetooth.profile.extra.STATE", 0);
          CallAudioHelper.this.log("BluetoothReceiver.onReceive: got ACTION_CONNECTION_STATE_CHANGED, profileState=" + i + ", isInitialSticky=" + isInitialStickyBroadcast());
          switch (i)
          {
          case 1: 
          default: 
            return;
          }
        } while (!mAudioDevices.contains(CallSession.AudioDevice.BLUETOOTH_HEADSET));
        mAudioManager.stopBluetoothSco();
        CallAudioHelper.this.cancelBluetoothTimer();
        mAudioDevices.remove(CallSession.AudioDevice.BLUETOOTH_HEADSET);
        onBluetoothDisconnected();
        CallAudioHelper.this.reportUpdate();
        return;
      } while (mAudioDevices.contains(CallSession.AudioDevice.BLUETOOTH_HEADSET));
      mAudioDevices.add(CallSession.AudioDevice.BLUETOOTH_HEADSET);
      CallAudioHelper.this.reportUpdate();
    }
  };
  private Context mContext;
  private Handler mHandler;
  private final Object mInitializationLock = new Object();
  private boolean mIsInitialized = false;
  private Runnable mOnAudioStateChangedListener;
  private CallState.AudioDeviceState mPendingAudioDeviceState;
  private boolean mSavedMuteState;
  private boolean mSavedSpeakerphoneState;
  private BroadcastReceiver mWiredHeadsetReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      int i;
      if (paramAnonymousIntent.getAction().equals("android.intent.action.HEADSET_PLUG"))
      {
        i = paramAnonymousIntent.getIntExtra("state", 0);
        CallAudioHelper.this.log("WiredHeadsetReceiver.onReceive: state=" + i + ", isInitialStickyBroadcast=" + isInitialStickyBroadcast());
      }
      switch (i)
      {
      default: 
        return;
      case 0: 
        mAudioDevices.remove(CallSession.AudioDevice.WIRED_HEADSET);
        if (CallAudioHelper.this.hasEarpiece()) {
          mAudioDevices.add(CallSession.AudioDevice.EARPIECE);
        }
        if (mAudioDeviceState == CallState.AudioDeviceState.WIRED_HEADSET_ON)
        {
          setAudioDevice(CallSession.AudioDevice.SPEAKERPHONE);
          return;
        }
        CallAudioHelper.this.reportUpdate();
        return;
      }
      mAudioDevices.add(CallSession.AudioDevice.WIRED_HEADSET);
      mAudioDevices.remove(CallSession.AudioDevice.EARPIECE);
      setAudioDevice(CallSession.AudioDevice.WIRED_HEADSET);
    }
  };
  private Runnable onBluetoothTimeoutRunnable = new Runnable()
  {
    public void run()
    {
      CallAudioHelper.this.onBluetoothTimeout();
    }
  };
  
  public CallAudioHelper(Context paramContext, Handler paramHandler, Runnable paramRunnable)
  {
    mContext = paramContext;
    mHandler = paramHandler;
    mOnAudioStateChangedListener = paramRunnable;
    mAudioManager = ((AudioManager)mContext.getSystemService("audio"));
    if (hasEarpiece()) {
      mAudioDevices.add(CallSession.AudioDevice.EARPIECE);
    }
    mAudioDevices.add(CallSession.AudioDevice.SPEAKERPHONE);
  }
  
  private void cancelBluetoothTimer()
  {
    log("Canceling bluetooth timer");
    mHandler.removeCallbacks(onBluetoothTimeoutRunnable);
  }
  
  private boolean hasEarpiece()
  {
    return ((TelephonyManager)mContext.getSystemService("phone")).getPhoneType() != 0;
  }
  
  private void log(String paramString)
  {
    LogUtil.LOG(3, "vclib:CallAudioHelper", paramString);
  }
  
  private void loge(String paramString)
  {
    LogUtil.LOG(6, "vclib:CallAudioHelper", paramString);
  }
  
  private void onBluetoothTimeout()
  {
    log("Starting or stopping Bluetooth timed out");
    cancelBluetoothTimer();
    switch (4.$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState[mAudioDeviceState.ordinal()])
    {
    default: 
      return;
    case 1: 
      if (mAudioManager.isBluetoothScoOn())
      {
        loge("We thought BT had timed out, but it's actually on; updating state.");
        mAudioDeviceState = CallState.AudioDeviceState.BLUETOOTH_ON;
      }
      for (;;)
      {
        reportUpdate();
        return;
        mAudioManager.stopBluetoothSco();
        usePendingAudioDeviceState();
      }
    }
    if (!mAudioManager.isBluetoothScoOn())
    {
      loge("We thought BT had timed out, but it's actually off; updating state.");
      usePendingAudioDeviceState();
    }
    for (;;)
    {
      reportUpdate();
      return;
      mAudioDeviceState = CallState.AudioDeviceState.BLUETOOTH_ON;
    }
  }
  
  private void registerForBluetoothIntentBroadcast()
  {
    log("registerForBluetoothIntentBroadcast");
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.media.SCO_AUDIO_STATE_CHANGED");
    localIntentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
    mContext.registerReceiver(mBluetoothReceiver, localIntentFilter);
  }
  
  private void registerForWiredHeadsetIntentBroadcast()
  {
    log("registerForWiredHeadsetIntentBroadcast");
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.HEADSET_PLUG");
    mContext.registerReceiver(mWiredHeadsetReceiver, localIntentFilter);
  }
  
  private void reportUpdate()
  {
    log("reportUpdate: state=" + mAudioDeviceState + ", devices=" + mAudioDevices);
    if (mOnAudioStateChangedListener != null) {
      mOnAudioStateChangedListener.run();
    }
  }
  
  private void setSpeakerphoneOn(boolean paramBoolean)
  {
    boolean bool = mAudioManager.isSpeakerphoneOn();
    log("setSpeakerphoneOn(" + paramBoolean + "), wasOn=" + paramBoolean);
    if (bool == paramBoolean) {
      return;
    }
    mAudioManager.setSpeakerphoneOn(paramBoolean);
  }
  
  private void startBluetoothTimer()
  {
    log("Starting bluetooth timer");
    mHandler.postDelayed(onBluetoothTimeoutRunnable, 5000L);
  }
  
  private boolean turnOffBluetooth()
  {
    log("turnOffBluetooth");
    if ((mAudioDeviceState != CallState.AudioDeviceState.BLUETOOTH_ON) && (mAudioDeviceState != CallState.AudioDeviceState.BLUETOOTH_TURNING_ON))
    {
      log("turnOffBluetooth: state is already " + mAudioDeviceState + ", cannot turn off");
      return false;
    }
    if (!mAudioManager.isBluetoothScoOn())
    {
      loge("turnOffBluetooth: SCO is already off, we were out of sync");
      usePendingAudioDeviceState();
      reportUpdate();
      return false;
    }
    cancelBluetoothTimer();
    mAudioDeviceState = CallState.AudioDeviceState.BLUETOOTH_TURNING_OFF;
    mAudioManager.stopBluetoothSco();
    startBluetoothTimer();
    return true;
  }
  
  private boolean turnOnBluetooth()
  {
    log("turnOnBluetooth");
    if ((mAudioDeviceState == CallState.AudioDeviceState.BLUETOOTH_ON) || (mAudioDeviceState == CallState.AudioDeviceState.BLUETOOTH_TURNING_ON))
    {
      log("turnOnBluetooth: state is already " + mAudioDeviceState + ", cannot turn on");
      return false;
    }
    if (mAudioManager.isBluetoothScoOn())
    {
      loge("turnOnBluetooth: SCO is already on, we were out of sync");
      mAudioDeviceState = CallState.AudioDeviceState.BLUETOOTH_ON;
      return false;
    }
    cancelBluetoothTimer();
    mAudioDeviceState = CallState.AudioDeviceState.BLUETOOTH_TURNING_ON;
    mAudioManager.startBluetoothSco();
    startBluetoothTimer();
    return true;
  }
  
  private void unregisterForBluetoothIntentBroadcast()
  {
    log("unregisterForBluetoothIntentBroadcast");
    mContext.unregisterReceiver(mBluetoothReceiver);
  }
  
  private void unregisterForWiredHeadsetIntentBroadcast()
  {
    log("unregisterForWiredHeadsetIntentBroadcast");
    mContext.unregisterReceiver(mWiredHeadsetReceiver);
  }
  
  private void usePendingAudioDeviceState()
  {
    boolean bool = true;
    if ((mPendingAudioDeviceState == null) || ((mPendingAudioDeviceState == CallState.AudioDeviceState.WIRED_HEADSET_ON) && (!mAudioDevices.contains(CallSession.AudioDevice.WIRED_HEADSET))))
    {
      loge("usePendingAudioDeviceState: there's no pending state or it was WH, but has beenunplugged; defaulting to speakerphone. Pending state was " + mPendingAudioDeviceState);
      mPendingAudioDeviceState = null;
      mAudioDeviceState = CallState.AudioDeviceState.SPEAKERPHONE_ON;
      setSpeakerphoneOn(true);
      return;
    }
    log("usePendingAudioDeviceState: using " + mPendingAudioDeviceState);
    mAudioDeviceState = mPendingAudioDeviceState;
    mPendingAudioDeviceState = null;
    if (mAudioDeviceState == CallState.AudioDeviceState.SPEAKERPHONE_ON) {}
    for (;;)
    {
      setSpeakerphoneOn(bool);
      return;
      bool = false;
    }
  }
  
  public void deinitAudio()
  {
    synchronized (mInitializationLock)
    {
      if (!mIsInitialized) {
        return;
      }
      log("deinitAudio: turn off BT SCO");
      mAudioManager.stopBluetoothSco();
      cancelBluetoothTimer();
      unregisterForWiredHeadsetIntentBroadcast();
      unregisterForBluetoothIntentBroadcast();
      log("deinitAudio: set mute back to " + mSavedMuteState + ", speakerphone back to " + mSavedSpeakerphoneState);
      setMute(mSavedMuteState);
      setSpeakerphoneOn(mSavedSpeakerphoneState);
      mIsInitialized = false;
      return;
    }
  }
  
  public CallState.AudioDeviceState getAudioDeviceState()
  {
    return mAudioDeviceState;
  }
  
  public Set<CallSession.AudioDevice> getAudioDevices()
  {
    return Collections.unmodifiableSet(new HashSet(mAudioDevices));
  }
  
  public void initAudio()
  {
    synchronized (mInitializationLock)
    {
      if (mIsInitialized) {
        return;
      }
      mSavedMuteState = isMute();
      mSavedSpeakerphoneState = mAudioManager.isSpeakerphoneOn();
      log("Saved mute = " + mSavedMuteState + ", speakerphone = " + mSavedSpeakerphoneState);
      mAudioManager.setMicrophoneMute(false);
      log("initAudio: turning speakerphone on by default");
      setSpeakerphoneOn(true);
      mAudioDeviceState = CallState.AudioDeviceState.SPEAKERPHONE_ON;
      registerForBluetoothIntentBroadcast();
      registerForWiredHeadsetIntentBroadcast();
      BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
      if ((localBluetoothAdapter != null) && (2 == localBluetoothAdapter.getProfileConnectionState(1)))
      {
        log("BT device was connected at start of call, turning SCO on...");
        mAudioDevices.add(CallSession.AudioDevice.BLUETOOTH_HEADSET);
        setAudioDevice(CallSession.AudioDevice.BLUETOOTH_HEADSET);
      }
      mIsInitialized = true;
      return;
    }
  }
  
  public boolean isMute()
  {
    return mAudioManager.isMicrophoneMute();
  }
  
  public void setAudioDevice(CallSession.AudioDevice paramAudioDevice)
  {
    switch (paramAudioDevice)
    {
    default: 
    case ???: 
      for (;;)
      {
        reportUpdate();
        return;
        mPendingAudioDeviceState = mAudioDeviceState;
        turnOnBluetooth();
      }
    case ???: 
      if (turnOffBluetooth()) {
        mPendingAudioDeviceState = CallState.AudioDeviceState.SPEAKERPHONE_ON;
      }
      for (;;)
      {
        setSpeakerphoneOn(true);
        break;
        mAudioDeviceState = CallState.AudioDeviceState.SPEAKERPHONE_ON;
      }
    case ???: 
      if (turnOffBluetooth()) {
        mPendingAudioDeviceState = CallState.AudioDeviceState.WIRED_HEADSET_ON;
      }
      for (;;)
      {
        setSpeakerphoneOn(false);
        break;
        mAudioDeviceState = CallState.AudioDeviceState.WIRED_HEADSET_ON;
      }
    }
    if (turnOffBluetooth()) {
      mPendingAudioDeviceState = CallState.AudioDeviceState.EARPIECE_ON;
    }
    for (;;)
    {
      setSpeakerphoneOn(false);
      break;
      mAudioDeviceState = CallState.AudioDeviceState.EARPIECE_ON;
    }
  }
  
  public void setMute(boolean paramBoolean)
  {
    boolean bool = isMute();
    log("setMute: " + paramBoolean + ", wasMute=" + bool);
    if (bool == paramBoolean) {
      return;
    }
    mAudioManager.setMicrophoneMute(paramBoolean);
    reportUpdate();
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallAudioHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */