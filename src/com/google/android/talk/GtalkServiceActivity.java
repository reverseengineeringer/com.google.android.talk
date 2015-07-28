package com.google.android.talk;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class GtalkServiceActivity
  extends Activity
{
  private static OnImSessionCreatedListener sInterceptingOnSessionCreatedListener;
  private TalkApp mApp;
  protected final Handler mHandler = new Handler();
  private IImSession mImSession;
  private boolean mInForeground;
  private ArrayList<OnImSessionCreatedListener> mOnSessionCreatedListeners;
  private IGTalkService mService;
  private boolean mSessionDispatchWindowOpen;
  private Runnable mTellGSFAppInForegroundRunnable = new Runnable()
  {
    public void run()
    {
      IGTalkService localIGTalkService = mService;
      if ((localIGTalkService != null) && (mInForeground)) {}
      try
      {
        localIGTalkService.setTalkForegroundState();
        mHandler.postDelayed(mTellGSFAppInForegroundRunnable, 20000L);
        return;
      }
      catch (RemoteException localRemoteException) {}
    }
  };
  
  private void createListeners()
  {
    if ((TalkApp.verboseLoggable()) && (Looper.getMainLooper().getThread() != Thread.currentThread())) {
      Log.wtf("talk", "GtalkServiceActivity.createListeners called on non-main thread");
    }
    if (mOnSessionCreatedListeners == null)
    {
      mOnSessionCreatedListeners = new ArrayList();
      if (sInterceptingOnSessionCreatedListener != null) {
        mOnSessionCreatedListeners.add(sInterceptingOnSessionCreatedListener);
      }
    }
  }
  
  private void dispatchSessionCreated(IImSession paramIImSession)
  {
    Iterator localIterator = mOnSessionCreatedListeners.iterator();
    while (localIterator.hasNext()) {
      ((OnImSessionCreatedListener)localIterator.next()).onSessionCreated(paramIImSession);
    }
  }
  
  private void log(String paramString)
  {
    if (TalkApp.debugLoggable()) {
      Log.d("talk", "[GtalkServiceActivity] " + paramString);
    }
  }
  
  public void addOnSessionCreatedListener(OnImSessionCreatedListener paramOnImSessionCreatedListener)
  {
    if ((sInterceptingOnSessionCreatedListener != null) && (mOnSessionCreatedListeners.contains(sInterceptingOnSessionCreatedListener))) {
      return;
    }
    if (mImSession != null) {
      paramOnImSessionCreatedListener.onSessionCreated(mImSession);
    }
    mOnSessionCreatedListeners.add(paramOnImSessionCreatedListener);
  }
  
  protected abstract long getAccountId();
  
  public TalkApp getApp()
  {
    if (mApp == null) {
      mApp = TalkApp.getApplication(this);
    }
    return mApp;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    createListeners();
  }
  
  public void onRestart()
  {
    super.onRestart();
    mService = null;
    mImSession = null;
    mApp.ensureServiceBound();
  }
  
  public void onStart()
  {
    super.onStart();
    mInForeground = true;
    TalkApp.refreshTalkLogLevel();
    long l = getAccountId();
    if ((l != 0L) && (!getApp().isAccountIdValid(l)))
    {
      log("Active account no longer in account list");
      AccountSelectionActivity.startAccountSelectionActivity(this);
      return;
    }
    registerForSessionAvailable();
  }
  
  public void onStop()
  {
    super.onStop();
    unregisterForSessionAvailable();
    mHandler.removeCallbacks(mTellGSFAppInForegroundRunnable);
    mInForeground = false;
  }
  
  protected void registerForSessionAvailable()
  {
    mSessionDispatchWindowOpen = true;
    getApp().addImSessionAvailableCallback(mHandler, getAccountId(), new SessionAvailableRunnable()
    {
      public void run(IGTalkService paramAnonymousIGTalkService, IImSession paramAnonymousIImSession)
      {
        sessionAvailable(paramAnonymousIGTalkService, paramAnonymousIImSession);
      }
    });
  }
  
  public void removeOnSessionCreatedListener(OnImSessionCreatedListener paramOnImSessionCreatedListener)
  {
    if (paramOnImSessionCreatedListener != null) {
      mOnSessionCreatedListeners.remove(paramOnImSessionCreatedListener);
    }
  }
  
  protected void sessionAvailable(IGTalkService paramIGTalkService, IImSession paramIImSession)
  {
    if (!mSessionDispatchWindowOpen) {
      return;
    }
    if (paramIGTalkService != null)
    {
      log("service connected");
      mService = paramIGTalkService;
      mImSession = paramIImSession;
      if (mImSession == null)
      {
        TalkApp.Logwtf("talk", "serviceStateChanged gave us null session");
        return;
      }
      if (mInForeground) {
        mHandler.post(mTellGSFAppInForegroundRunnable);
      }
      dispatchSessionCreated(mImSession);
      return;
    }
    log("service disconnected");
  }
  
  protected void unregisterForSessionAvailable()
  {
    mSessionDispatchWindowOpen = false;
    getApp().removeImSessionAvailableCallback(mHandler);
  }
  
  public static abstract interface OnImSessionCreatedListener
  {
    public abstract void onSessionCreated(IImSession paramIImSession);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.GtalkServiceActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */