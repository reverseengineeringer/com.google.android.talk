package com.google.android.talk.videochat;

import android.app.Service;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gtalkservice.IChatSession;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IGTalkService.Stub;
import com.google.android.gtalkservice.IImSession;
import com.google.android.talk.DatabaseUtils;
import com.google.android.talk.TalkApp;
import java.util.LinkedList;
import java.util.Queue;

public class VideoChatOutputProcessingService
  extends Service
{
  private volatile BackgroundHandler mBackgroundHandler;
  private volatile Looper mBackgroundLooper;
  protected IGTalkService mGTalkService;
  private boolean mServiceBindingRequested;
  private ServiceConnection mServiceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      mGTalkService = IGTalkService.Stub.asInterface(paramAnonymousIBinder);
      while (!mServiceTaskBuffer.isEmpty()) {
        mBackgroundHandler.sendMessage((Message)mServiceTaskBuffer.remove());
      }
    }
    
    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      mGTalkService = null;
    }
  };
  private Queue<Message> mServiceTaskBuffer = new LinkedList();
  
  private void handleCallInProgressIntent(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("remote_bare_jid");
    paramIntent = paramIntent.getStringExtra("local_bare_jid");
    long l = DatabaseUtils.getAccountIdForUsername(getContentResolver(), paramIntent);
    try
    {
      IImSession localIImSession = mGTalkService.getImSessionForAccountId(l);
      if (localIImSession != null)
      {
        IChatSession localIChatSession = localIImSession.getChatSession(str);
        paramIntent = localIChatSession;
        if (localIChatSession == null) {
          paramIntent = localIImSession.createChatSession(str);
        }
        paramIntent.ensureNonZeroLastMessageDate();
      }
      return;
    }
    catch (RemoteException paramIntent)
    {
      Log.e("Talk:VideoChatOutputProcessingService", "Caught remote exception trying to ensureNonZeroLastMessageDate: " + paramIntent);
    }
  }
  
  private void handleEndCauseIntent(Intent paramIntent)
  {
    Object localObject = paramIntent.getStringExtra("local_bare_jid");
    String str = paramIntent.getStringExtra("remote_bare_jid");
    boolean bool = paramIntent.getBooleanExtra("is_video", true);
    int i = paramIntent.getIntExtra("end_cause", -1);
    paramIntent = getContentResolver();
    long l = DatabaseUtils.getAccountIdForUsername(paramIntent, (String)localObject);
    try
    {
      localObject = mGTalkService.getImSessionForAccountId(l);
      if (localObject != null)
      {
        localObject = ((IImSession)localObject).getChatSession(str);
        if ((localObject != null) || (localObject != null)) {
          ((IChatSession)localObject).reportEndCause(DatabaseUtils.getNicknameForContact(paramIntent, str, l), bool, i);
        }
      }
      else
      {
        TalkApp.Logwtf("Talk:VideoChatOutputProcessingService", "no ImSession for account id: " + l);
        return;
      }
    }
    catch (RemoteException paramIntent)
    {
      Log.e("Talk:VideoChatOutputProcessingService", "Problem inserting end cause message into chat history", paramIntent);
    }
  }
  
  private void handleMissedCallIntent(Intent paramIntent)
  {
    Object localObject = paramIntent.getStringExtra("local_bare_jid");
    String str = paramIntent.getStringExtra("remote_bare_jid");
    boolean bool1 = paramIntent.getBooleanExtra("is_video", true);
    boolean bool2 = paramIntent.getBooleanExtra("no_wifi", false);
    ContentResolver localContentResolver = getContentResolver();
    long l = DatabaseUtils.getAccountIdForUsername(localContentResolver, (String)localObject);
    try
    {
      IImSession localIImSession = mGTalkService.getImSessionForAccountId(l);
      if (localIImSession != null)
      {
        localObject = localIImSession.getChatSession(str);
        paramIntent = (Intent)localObject;
        if (localObject == null) {
          paramIntent = localIImSession.createChatSession(str);
        }
        paramIntent.reportMissedCall(str, DatabaseUtils.getNicknameForContact(localContentResolver, str, l), bool1, bool2);
        return;
      }
      TalkApp.Logwtf("Talk:VideoChatOutputProcessingService", "no ImSession for account id: " + l);
      return;
    }
    catch (RemoteException paramIntent)
    {
      Log.e("Talk:VideoChatOutputProcessingService", "Problem inserting missed call message into chat history", paramIntent);
    }
  }
  
  private void postGTalkServiceTask(Intent paramIntent, int paramInt)
  {
    Message localMessage = mBackgroundHandler.obtainMessage();
    obj = paramIntent;
    arg1 = paramInt;
    if (mGTalkService != null)
    {
      mBackgroundHandler.sendMessage(localMessage);
      return;
    }
    if (!mServiceBindingRequested)
    {
      paramIntent = new Intent(IGTalkService.class.getName());
      paramIntent.setPackage("com.google.android.gsf");
      bindService(paramIntent, mServiceConnection, 0);
      mServiceBindingRequested = true;
    }
    mServiceTaskBuffer.add(localMessage);
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    HandlerThread localHandlerThread = new HandlerThread(VideoChatOutputProcessingService.class.getName());
    localHandlerThread.start();
    mBackgroundLooper = localHandlerThread.getLooper();
    mBackgroundHandler = new BackgroundHandler(mBackgroundLooper);
  }
  
  public void onDestroy()
  {
    if (mServiceBindingRequested) {
      unbindService(mServiceConnection);
    }
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    super.onStartCommand(paramIntent, paramInt1, paramInt2);
    String str = paramIntent.getAction();
    if ("com.google.android.videochat.ACTION_MISSED_CALL".equals(str)) {
      postGTalkServiceTask(paramIntent, paramInt2);
    }
    for (;;)
    {
      return 3;
      if ("com.google.android.videochat.ACTION_END_CAUSE".equals(str)) {
        postGTalkServiceTask(paramIntent, paramInt2);
      } else if ("com.google.android.videochat.ACTION_CALL_IN_PROGRESS".equals(str)) {
        postGTalkServiceTask(paramIntent, paramInt2);
      }
    }
  }
  
  private final class BackgroundHandler
    extends Handler
  {
    public BackgroundHandler(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      Intent localIntent = (Intent)obj;
      int i = arg1;
      String str = localIntent.getAction();
      if ("com.google.android.videochat.ACTION_MISSED_CALL".equals(str)) {
        VideoChatOutputProcessingService.this.handleMissedCallIntent(localIntent);
      }
      for (;;)
      {
        stopSelf(arg1);
        return;
        if ("com.google.android.videochat.ACTION_END_CAUSE".equals(str)) {
          VideoChatOutputProcessingService.this.handleEndCauseIntent(localIntent);
        } else if ("com.google.android.videochat.ACTION_CALL_IN_PROGRESS".equals(str)) {
          VideoChatOutputProcessingService.this.handleCallInProgressIntent(localIntent);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatOutputProcessingService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */