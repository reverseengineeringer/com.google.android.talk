package com.google.android.videochat;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import java.util.Set;

public class CallStateClient
{
  private CallStateListener mCallStateListener = new CallStateListener()
  {
    public void onCallStateUpdate(String paramAnonymousString, CallState paramAnonymousCallState, boolean paramAnonymousBoolean, Object paramAnonymousObject)
    {
      CallStateClient.this.onCallStateUpdate(paramAnonymousString, paramAnonymousCallState, paramAnonymousBoolean, paramAnonymousObject);
    }
    
    public void onChatRoomStateUpdate(Set<NamedSource> paramAnonymousSet1, Set<NamedSource> paramAnonymousSet2, boolean paramAnonymousBoolean, Object paramAnonymousObject)
    {
      onChatRoomUpdate(paramAnonymousSet1, paramAnonymousSet2, paramAnonymousBoolean, paramAnonymousObject);
    }
    
    public void onLoudestSpeakerUpdate(int paramAnonymousInt, boolean paramAnonymousBoolean, Object paramAnonymousObject)
    {
      CallStateClient.this.onLoudestSpeakerUpdate(paramAnonymousInt, paramAnonymousBoolean, paramAnonymousObject);
    }
  };
  protected Context mContext;
  private boolean mIsListening;
  private ServiceConnection mSoftConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      paramAnonymousComponentName = (VideoChatService.SoftBinder)paramAnonymousIBinder;
      CallStateClient.this.onSoftVideoChatServiceBound(paramAnonymousComponentName);
    }
    
    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      onDisconnected();
      stopListening();
      CallStateClient.access$102(CallStateClient.this, null);
      startListening();
    }
  };
  private VideoChatService.SoftBinder mSoftServiceBinder;
  
  public CallStateClient(Context paramContext)
  {
    mContext = paramContext;
  }
  
  private void bindVideoChatService()
  {
    Intent localIntent = new Intent("com.google.android.talk.SOFT_BIND");
    localIntent.setClass(mContext, VideoChatService.class);
    mContext.bindService(localIntent, mSoftConnection, 0);
  }
  
  private void onSoftVideoChatServiceBound(VideoChatService.SoftBinder paramSoftBinder)
  {
    mSoftServiceBinder = paramSoftBinder;
    if (mIsListening)
    {
      mSoftServiceBinder.addRemoteCallStateListener(mCallStateListener);
      mSoftServiceBinder.requestCallStateUpdate(null);
    }
  }
  
  public void onCallStateUpdate(String paramString, CallState paramCallState, boolean paramBoolean, Object paramObject) {}
  
  public void onChatRoomUpdate(Set<NamedSource> paramSet1, Set<NamedSource> paramSet2, boolean paramBoolean, Object paramObject) {}
  
  public void onDisconnected() {}
  
  public void onLoudestSpeakerUpdate(int paramInt, boolean paramBoolean, Object paramObject) {}
  
  public void requestUpdate()
  {
    requestUpdate(null);
  }
  
  public void requestUpdate(Object paramObject)
  {
    try
    {
      if (mSoftServiceBinder != null) {
        mSoftServiceBinder.requestCallStateUpdate(paramObject);
      }
      return;
    }
    finally {}
  }
  
  public void startListening()
  {
    Log.d("vclib:CallStateClient", "startListening");
    mIsListening = true;
    bindVideoChatService();
  }
  
  public void stopListening()
  {
    Log.d("vclib:CallStateClient", "stopListening");
    mIsListening = false;
    if (mSoftServiceBinder != null) {
      mSoftServiceBinder.removeRemoteCallStateListener(mCallStateListener);
    }
    try
    {
      mContext.unbindService(mSoftConnection);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e("vclib:CallStateClient", "Problem unbinding service.", localIllegalArgumentException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallStateClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */