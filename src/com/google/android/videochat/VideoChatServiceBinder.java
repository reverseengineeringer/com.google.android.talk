package com.google.android.videochat;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.videochat.util.LogUtil;

public class VideoChatServiceBinder
{
  private boolean mBindRequested = false;
  private ServiceConnection mConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName arg1, IBinder paramAnonymousIBinder)
    {
      paramAnonymousIBinder = (VideoChatService.HardBinder)paramAnonymousIBinder;
      paramAnonymousIBinder.setOutputReceiverComponent(mOutgoingStanzaReceiverComponent);
      synchronized (VideoChatServiceBinder.this)
      {
        if (mServiceBoundCallback != null)
        {
          mServiceBoundCallback.onServiceBound(paramAnonymousIBinder);
          VideoChatServiceBinder.access$102(VideoChatServiceBinder.this, null);
        }
        return;
      }
    }
    
    public void onServiceDisconnected(ComponentName paramAnonymousComponentName) {}
  };
  private Context mContext;
  private ComponentName mOutgoingStanzaReceiverComponent;
  private ServiceBoundCallback mServiceBoundCallback;
  
  public VideoChatServiceBinder(Context paramContext, ComponentName paramComponentName)
  {
    mContext = paramContext;
    mOutgoingStanzaReceiverComponent = paramComponentName;
  }
  
  public void bind(ServiceBoundCallback paramServiceBoundCallback)
  {
    try
    {
      if (mBindRequested)
      {
        LogUtil.LOGW("vclib:VideoChatServiceBinder", "bind already called; ignoring repeated call");
        return;
      }
      mServiceBoundCallback = paramServiceBoundCallback;
      paramServiceBoundCallback = new Intent("com.google.android.talk.HARD_BIND");
      paramServiceBoundCallback.setClass(mContext, VideoChatService.class);
      mContext.bindService(paramServiceBoundCallback, mConnection, 1);
      mBindRequested = true;
      return;
    }
    finally {}
  }
  
  public void unbind()
  {
    try
    {
      if (!mBindRequested)
      {
        LogUtil.LOGW("vclib:VideoChatServiceBinder", "service not bound; ignoring unbind call");
        return;
      }
      mContext.unbindService(mConnection);
      mBindRequested = false;
      return;
    }
    finally {}
  }
  
  public static abstract interface ServiceBoundCallback
  {
    public abstract void onServiceBound(VideoChatService.HardBinder paramHardBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.VideoChatServiceBinder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */