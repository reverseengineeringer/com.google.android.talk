package com.google.android.talk;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

public class AlertNotificationActivity
  extends AlertNotificationFullScreenActivity
{
  private final int MAX_KEYGUARD_CHECKS = 5;
  private final Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      AlertNotificationActivity.this.handleScreenOff((KeyguardManager)obj);
    }
  };
  private int mKeyguardRetryCount;
  private final BroadcastReceiver mScreenOffReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = (KeyguardManager)paramAnonymousContext.getSystemService("keyguard");
      AlertNotificationActivity.this.handleScreenOff(paramAnonymousContext);
    }
  };
  
  private boolean checkRetryCount()
  {
    int i = mKeyguardRetryCount;
    mKeyguardRetryCount = (i + 1);
    if (i >= 5)
    {
      Log.e("talk", "Tried to read keyguard status too many times, bailing...");
      return false;
    }
    return true;
  }
  
  private void handleScreenOff(KeyguardManager paramKeyguardManager)
  {
    if ((!paramKeyguardManager.inKeyguardRestrictedInputMode()) && (checkRetryCount()))
    {
      mHandler.sendMessageDelayed(mHandler.obtainMessage(0, paramKeyguardManager), 500L);
      return;
    }
    paramKeyguardManager = new Intent(this, AlertNotificationFullScreenActivity.class);
    paramKeyguardManager.putExtra("screen_off", true);
    paramKeyguardManager.putExtra("from", mRemoteJid);
    paramKeyguardManager.putExtra("accountId", mAccountId);
    paramKeyguardManager.putExtra("message", mMessage);
    paramKeyguardManager.putExtra("android.intent.extra.INTENT", mShowChatIntent);
    paramKeyguardManager.putExtra("timestamp", mTimestamp);
    paramKeyguardManager.putExtra("incoming_call", mIsIncomingCall);
    paramKeyguardManager.putExtra("isvideo", mIsVideo);
    startActivity(paramKeyguardManager);
    finish();
  }
  
  public void onBackPressed()
  {
    finish();
  }
  
  public void onStart()
  {
    super.onStart();
    TalkApp.LOGV("talk", "[AlertNotification] onStart: register for SCREEN_OFF");
    registerReceiver(mScreenOffReceiver, new IntentFilter("android.intent.action.SCREEN_OFF"));
  }
  
  public void onStop()
  {
    super.onStop();
    TalkApp.LOGV("talk", "[AlertNotification] onStop: unregister for SCREEN_OFF");
    unregisterReceiver(mScreenOffReceiver);
    mHandler.removeMessages(0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AlertNotificationActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */