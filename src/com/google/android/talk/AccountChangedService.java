package com.google.android.talk;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gsf.Gservices;
import com.google.android.gtalkservice.ConnectionError;
import com.google.android.gtalkservice.ConnectionState;
import com.google.android.gtalkservice.IConnectionStateListener.Stub;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import java.util.ArrayList;
import java.util.Iterator;

public class AccountChangedService
  extends Service
  implements AccountLoginUtils.ConnectionCreatedListener, TalkApp.AccountIdUpdatedListener
{
  private TalkApp mApp;
  private TalkConnectionListener mConnectionListener;
  private ArrayList<IImSession> mSessions;
  private int mStartId;
  
  private void log(String paramString)
  {
    TalkApp.LOGD("talk", "[" + this + "] " + paramString);
  }
  
  private boolean stillLoggingIn()
  {
    Iterator localIterator = mApp.getAccountList().iterator();
    while (localIterator.hasNext()) {
      if (nextautoLoggingIn) {
        return true;
      }
    }
    return false;
  }
  
  private void unregisterAllSessions()
  {
    Iterator localIterator = mSessions.iterator();
    while (localIterator.hasNext())
    {
      IImSession localIImSession = (IImSession)localIterator.next();
      try
      {
        localIImSession.removeConnectionStateListener(mConnectionListener);
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("talk", "unregisterAllSessions caught ", localRemoteException);
      }
    }
  }
  
  public void connectionCreated(String paramString, IImSession paramIImSession)
  {
    try
    {
      paramIImSession.addConnectionStateListener(mConnectionListener);
      if (!mSessions.contains(paramIImSession)) {
        mSessions.add(paramIImSession);
      }
      return;
    }
    catch (RemoteException paramString)
    {
      Log.e("talk", "connectionCreated caught ", paramString);
    }
  }
  
  public void onAccountIdUpdated(TalkApp.AccountInfo paramAccountInfo)
  {
    if (accountId > 0L) {
      mApp.setDefaultRingtoneForAccount(accountId);
    }
  }
  
  public void onAccountListChanged()
  {
    log("onAccountListChanged");
    if (!Gservices.getBoolean(getContentResolver(), "gtalk_auto_login_new_accounts", true)) {
      log("Auto login disabled from gservices");
    }
    int j;
    do
    {
      return;
      Object localObject = mApp.getAccountList();
      j = 1;
      int i = 1;
      if (((ArrayList)localObject).size() > 0)
      {
        IGTalkService localIGTalkService = mApp.getGTalkService();
        localObject = ((ArrayList)localObject).iterator();
        for (;;)
        {
          j = i;
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
          TalkApp.AccountInfo localAccountInfo = (TalkApp.AccountInfo)((Iterator)localObject).next();
          if (accountId != 0L)
          {
            log("skipping: " + username + " not a new account");
          }
          else if (AccountLoginUtils.isSignedIn(username, localIGTalkService))
          {
            log("skipping: " + username + " already signed in");
          }
          else
          {
            log("trying to sign in: " + username);
            i = 0;
            if (mConnectionListener == null)
            {
              mConnectionListener = new TalkConnectionListener(null);
              mSessions = new ArrayList();
            }
            ConnectionStateOnlineReceiver.markAccountForSignInNotification(this, username);
            AccountLoginUtils.signIn(username, localIGTalkService, this);
            autoLoggingIn = true;
          }
        }
      }
    } while (j == 0);
    log("no new accounts, so stopping service");
    stopSelf(mStartId);
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    log("AccountChangedService");
    mStartId = paramInt2;
    mApp = ((TalkApp)getApplication());
    mApp.loadAccounts();
    mApp.addAccountListChangedListener(this);
    return 2;
  }
  
  private final class TalkConnectionListener
    extends IConnectionStateListener.Stub
  {
    private TalkConnectionListener() {}
    
    public void connectionStateChanged(ConnectionState paramConnectionState, ConnectionError paramConnectionError, long paramLong, String paramString)
    {
      try
      {
        if (TalkApp.debugLoggable()) {
          AccountChangedService.this.log("connectionStateChanged: state: " + paramConnectionState.toString() + " error: " + paramConnectionError + " accountId: " + paramLong + " username: " + paramString);
        }
        mApp.connectionStateChanged(paramConnectionState, paramConnectionError, paramLong, paramString);
        paramConnectionState = mApp.getAccountInfo(paramString);
        if (paramConnectionState != null)
        {
          autoLoggingIn = false;
          FeatureManager.setAvailableFeatures(AccountChangedService.this, paramLong, new Runnable()
          {
            public void run()
            {
              if (!AccountChangedService.this.stillLoggingIn())
              {
                AccountChangedService.this.log("stopping service");
                AccountChangedService.this.unregisterAllSessions();
                mApp.removeAccountListChangedListener(AccountChangedService.this);
                stopSelf();
              }
            }
          });
        }
        return;
      }
      catch (RuntimeException paramConnectionState)
      {
        Log.e("talk", "AccountChangedService.connectionStateChanged error", paramConnectionState);
        throw paramConnectionState;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountChangedService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */