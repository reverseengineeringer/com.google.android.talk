package com.google.android.videochat;

import android.app.Notification;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.videochat.util.LogUtil;
import com.google.android.videochat.util.Util;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashSet;

public class VideoChatService
  extends Service
{
  private CallSession mCachedCallSession;
  private final Object mCachedCallSessionLock = new Object();
  private StanzaInjector mCachedStanzaInjector;
  private final Object mCachedStanzaInjectorLock = new Object();
  private CallManager mCallManager;
  private final HardBinder mHardBinder = new HardBinder();
  private boolean mHardBound;
  private final HashSet<String> mKeepAliveRequests = new HashSet();
  private NetworkConnectionManager mNetworkConnectionManager;
  private BroadcastReceiver mNotifyNewJingleInfoReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = paramAnonymousIntent.getStringExtra("JINGLE_INFO_STANZA");
      if ((mCallManager != null) && (!TextUtils.isEmpty(paramAnonymousContext)))
      {
        mCallManager.handleJingleInfoStanza(paramAnonymousContext);
        return;
      }
      Log.e("vclib:VideoChatService", "Can't process new jingle ifo stanza because mCallManager = " + mCallManager + ", payload = " + paramAnonymousContext);
    }
  };
  private OngoingNotificationFactory mOngoingNotificationFactory;
  private ComponentName mOutputReceiverComponent;
  private final SoftBinder mSoftBinder = new SoftBinder();
  private StopServiceHandler mStopServiceHandler = new StopServiceHandler(null);
  private boolean mStopped;
  
  private String createSessionKey(String paramString1, String paramString2)
  {
    return paramString1 + "_" + paramString2;
  }
  
  private CallSession getCallSession()
  {
    synchronized (mCachedCallSessionLock)
    {
      if (mCachedCallSession == null) {
        mCachedCallSession = new CallSession(this, mCallManager);
      }
      return mCachedCallSession;
    }
  }
  
  private StanzaInjector getStanzaInjector()
  {
    synchronized (mCachedStanzaInjectorLock)
    {
      if (mCachedStanzaInjector == null) {
        mCachedStanzaInjector = new StanzaInjector(this, mCallManager);
      }
      return mCachedStanzaInjector;
    }
  }
  
  private CallManager initCallManager()
  {
    CallManager localCallManager = CallManager.getInstance(this);
    localCallManager.setCallBoundaryCallback(new CallManager.CallBoundaryCallback()
    {
      private String callJid;
      
      public void onConnect(String paramAnonymousString1, String paramAnonymousString2, boolean paramAnonymousBoolean)
      {
        postOngoingNotification(paramAnonymousString1, paramAnonymousString2, paramAnonymousBoolean);
        callJid = paramAnonymousString1;
        VideoChatService.this.onCallConnected(paramAnonymousString1, paramAnonymousString2);
      }
      
      public void onDeinit(String paramAnonymousString1, String paramAnonymousString2)
      {
        if ((callJid != null) && (callJid.equals(paramAnonymousString1)))
        {
          removeOngoingNotification();
          getNetworkConnectionManager().stopUsingMobileHipri();
        }
        VideoChatService.this.onCallEnding(paramAnonymousString1, paramAnonymousString2);
      }
      
      public void onInit(String paramAnonymousString1, String paramAnonymousString2, boolean paramAnonymousBoolean)
      {
        getNetworkConnectionManager().startUsingMobileHipriIfOnMobileNetwork();
      }
    });
    return localCallManager;
  }
  
  private void onCallConnected(String paramString1, String paramString2)
  {
    offerUpgradeToFullJidKeepAliveRequest(paramString1, paramString2);
  }
  
  private void onCallEnding(String paramString1, String paramString2)
  {
    removeKeepAliveRequest(paramString1, paramString2);
  }
  
  private boolean stopServiceIfSafe()
  {
    synchronized (mKeepAliveRequests)
    {
      if ((!mStopped) && (safeToStop()))
      {
        Log.d("vclib:VideoChatService", "Stopping VideoChatService...");
        stopSelf();
        mStopped = true;
        return true;
      }
      return false;
    }
  }
  
  void addKeepAliveRequest(String paramString1, String paramString2)
  {
    String str = createSessionKey(paramString1, paramString2);
    synchronized (mKeepAliveRequests)
    {
      if (!mKeepAliveRequests.contains(str))
      {
        mKeepAliveRequests.add(str);
        if (LogUtil.getTalkLogLevel() <= 2) {
          Log.v("vclib:VideoChatService", "add keep-alive for remoteJid: " + paramString1 + "  localBareJid: " + paramString2);
        }
      }
      else
      {
        return;
      }
      Log.i("vclib:VideoChatService", "add keep-alive");
    }
  }
  
  protected void dump(FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    mCallManager.dump(paramPrintWriter);
  }
  
  public NetworkConnectionManager getNetworkConnectionManager()
  {
    return mNetworkConnectionManager;
  }
  
  public int getNumKeepAliveRequests()
  {
    synchronized (mKeepAliveRequests)
    {
      int i = mKeepAliveRequests.size();
      return i;
    }
  }
  
  ComponentName getOutputReceiverComponent()
  {
    return mOutputReceiverComponent;
  }
  
  public boolean isBound()
  {
    return mHardBound;
  }
  
  public boolean isStopped()
  {
    return mStopped;
  }
  
  void offerUpgradeToFullJidKeepAliveRequest(String paramString1, String paramString2)
  {
    String str1 = createSessionKey(Util.parseBareAddress(paramString1), paramString2);
    String str2 = createSessionKey(paramString1, paramString2);
    synchronized (mKeepAliveRequests)
    {
      if ((!mKeepAliveRequests.contains(str2)) && (mKeepAliveRequests.contains(str1)))
      {
        mKeepAliveRequests.remove(str1);
        paramString1 = createSessionKey(paramString1, paramString2);
        mKeepAliveRequests.add(paramString1);
      }
      return;
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    mStopped = false;
    if (paramIntent.getAction().equals("com.google.android.talk.SOFT_BIND")) {
      return mSoftBinder;
    }
    if (paramIntent.getAction().equals("com.google.android.talk.HARD_BIND"))
    {
      paramIntent = new Intent("android.intent.action.VIEW");
      paramIntent.setClass(this, VideoChatService.class);
      startService(paramIntent);
      mHardBound = true;
      return mHardBinder;
    }
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    mCallManager = initCallManager();
    mNetworkConnectionManager = new NetworkConnectionManager(this);
    IntentFilter localIntentFilter = new IntentFilter("com.google.android.videochat.NOTIFY_JINGLE_INFO");
    registerReceiver(mNotifyNewJingleInfoReceiver, localIntentFilter);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    Log.i("vclib:VideoChatService", "onDestroy()");
    mCachedCallSession = null;
    mCachedStanzaInjector = null;
    mCallManager.release();
    mNetworkConnectionManager.stopUsingMobileHipri();
    unregisterReceiver(mNotifyNewJingleInfoReceiver);
  }
  
  void onNewCallStarting(String paramString1, String paramString2)
  {
    addKeepAliveRequest(paramString1, paramString2);
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    mStopped = false;
    if (paramIntent == null) {}
    String str2;
    do
    {
      return 2;
      str2 = paramIntent.getAction();
    } while ((!str2.equals("com.google.android.videochat.ACTION_INCOMING_STANZA")) && (!str2.equals("com.google.android.videochat.ACTION_INCOMING_STANZA_RESPONSE")));
    ComponentName localComponentName = (ComponentName)paramIntent.getParcelableExtra("output_receiver");
    String str1 = paramIntent.getStringExtra("stanza");
    setOutputReceiverComponent(localComponentName);
    if (str2.equals("com.google.android.videochat.ACTION_INCOMING_STANZA"))
    {
      paramIntent = paramIntent.getStringExtra("local_bare_jid");
      getStanzaInjector().injectStanza(str1, paramIntent);
      return 2;
    }
    paramIntent = paramIntent.getStringExtra("original_stanza");
    getStanzaInjector().injectResponseStanza(paramIntent, str1);
    return 2;
  }
  
  public boolean onUnbind(Intent paramIntent)
  {
    if (paramIntent.getAction().equals("com.google.android.talk.SOFT_BIND")) {}
    while (!paramIntent.getAction().equals("com.google.android.talk.HARD_BIND")) {
      return false;
    }
    mHardBound = false;
    stopServiceIfSafe();
    return false;
  }
  
  void postOngoingNotification(String paramString1, String paramString2, boolean paramBoolean)
  {
    paramString1 = Util.parseBareAddress(paramString1);
    mOngoingNotificationFactory.requestOngoingNotification(new OngoingNotificationFactory.OngoingNotificationReadyCallback()
    {
      public void onOngoingNotificationReady(Notification paramAnonymousNotification)
      {
        if (paramAnonymousNotification != null)
        {
          flags |= 0x2;
          startForeground(1, paramAnonymousNotification);
        }
      }
    }, paramString1, paramString2, paramBoolean);
  }
  
  void postStopServiceIfSafe()
  {
    mStopServiceHandler.removeMessages(1);
    Message localMessage = mStopServiceHandler.obtainMessage(1);
    mStopServiceHandler.sendMessageDelayed(localMessage, 3000L);
  }
  
  public void removeKeepAliveRequest(String paramString1, String paramString2)
  {
    String str = createSessionKey(paramString1, paramString2);
    for (;;)
    {
      synchronized (mKeepAliveRequests)
      {
        if (mKeepAliveRequests.contains(str))
        {
          mKeepAliveRequests.remove(str);
          if (LogUtil.getTalkLogLevel() <= 2)
          {
            Log.v("vclib:VideoChatService", "remove keep-alive for remoteJid: " + paramString1 + "  localBareJid: " + paramString2);
            stopServiceIfSafe();
            return;
          }
          Log.i("vclib:VideoChatService", "remove keep-alive");
        }
      }
      str = createSessionKey(Util.parseBareAddress(paramString1), paramString2);
      if (mKeepAliveRequests.contains(str))
      {
        mKeepAliveRequests.remove(str);
        if (LogUtil.getTalkLogLevel() <= 2) {
          Log.v("vclib:VideoChatService", "remove keep-alive for remoteJid: " + paramString1 + "  localBareJid: " + paramString2);
        } else {
          Log.i("vclib:VideoChatService", "remove keep-alive");
        }
      }
    }
  }
  
  void removeOngoingNotification()
  {
    stopForeground(true);
  }
  
  public boolean safeToStop()
  {
    for (;;)
    {
      synchronized (mKeepAliveRequests)
      {
        if ((mKeepAliveRequests.isEmpty()) && (!mHardBound))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void setOngoingNotificationFactory(OngoingNotificationFactory paramOngoingNotificationFactory)
  {
    mOngoingNotificationFactory = paramOngoingNotificationFactory;
  }
  
  void setOutputReceiverComponent(ComponentName paramComponentName)
  {
    mOutputReceiverComponent = paramComponentName;
  }
  
  public class HardBinder
    extends Binder
  {
    public HardBinder() {}
    
    public CallSession getCallSession()
    {
      return VideoChatService.this.getCallSession();
    }
    
    void setOutputReceiverComponent(ComponentName paramComponentName)
    {
      VideoChatService.this.setOutputReceiverComponent(paramComponentName);
    }
  }
  
  public class SoftBinder
    extends Binder
  {
    public SoftBinder() {}
    
    public void addRemoteCallStateListener(CallStateListener paramCallStateListener)
    {
      if (mStopped) {
        return;
      }
      mCallManager.addCallStateListener(paramCallStateListener);
    }
    
    public void removeRemoteCallStateListener(CallStateListener paramCallStateListener)
    {
      if (mStopped) {
        return;
      }
      mCallManager.removeCallStateListener(paramCallStateListener);
    }
    
    public void requestCallStateUpdate(Object paramObject)
    {
      if (mStopped) {
        return;
      }
      mCallManager.requestCallStateUpdate(paramObject);
    }
  }
  
  private class StopServiceHandler
    extends Handler
  {
    private StopServiceHandler() {}
    
    public void handleMessage(Message paramMessage)
    {
      if (what == 1) {
        VideoChatService.this.stopServiceIfSafe();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.VideoChatService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */