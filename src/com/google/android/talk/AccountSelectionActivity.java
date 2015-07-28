package com.google.android.talk;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ListActivity;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.gsf.TalkContract.AccountStatus;
import com.google.android.gtalkservice.ConnectionError;
import com.google.android.gtalkservice.ConnectionState;
import com.google.android.gtalkservice.IConnectionStateListener.Stub;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class AccountSelectionActivity
  extends ListActivity
  implements AccountLoginUtils.ConnectionCreatedListener, TalkApp.AccountListChangeListener
{
  private TalkApp.AccountInfo mAccountInfo;
  private AccountListAdapter mAccountListAdapter;
  private boolean mAddingAccount;
  private TalkApp mApp;
  private MyConnectionListener mConnectionListener;
  private int mConnectionRetry;
  private String mErrorMessage;
  private Toast mErrorToast;
  private final Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (what)
      {
      default: 
        return;
      case 123: 
        AccountSelectionActivity.this.signIn(arg1);
        return;
      }
      AccountSelectionActivity.this.signOut(arg1);
    }
  };
  private ArrayList<IImSession> mImSessionList = new ArrayList();
  private TextView mProgressText;
  private IGTalkService mService;
  private boolean mSessionDispatchWindowOpen;
  private boolean mStopped;
  
  private void clearAccountsLoading()
  {
    if (mAccountListAdapter != null)
    {
      int j = 0;
      int i = 0;
      while (i < mAccountListAdapter.getCount())
      {
        TalkApp.AccountInfo localAccountInfo = (TalkApp.AccountInfo)mAccountListAdapter.getItem(i);
        if (loading)
        {
          j = 1;
          loading = false;
        }
        i += 1;
      }
      if (j != 0) {
        mAccountListAdapter.notifyDataSetChanged();
      }
    }
  }
  
  private void completeSetupWithAccounts(List<TalkApp.AccountInfo> paramList)
  {
    if (mAccountListAdapter == null)
    {
      mAccountListAdapter = new AccountListAdapter(this, paramList, getContentResolver(), mApp, mHandler);
      setListAdapter(mAccountListAdapter);
    }
    for (;;)
    {
      clearAccountsLoading();
      return;
      mAccountListAdapter.clear();
      mAccountListAdapter.addAll(paramList);
    }
  }
  
  private void displayAccounts()
  {
    hideMessage();
    ArrayList localArrayList = new ArrayList(mApp.getAccountList());
    completeSetupWithAccounts(localArrayList);
    new LoadUnreadMessageCounts(localArrayList).execute(new ContentResolver[0]);
  }
  
  private void displayLoadingAccountsMode()
  {
    if (TalkApp.debugLoggable()) {
      log("displayLoadingAccountsMode");
    }
    mProgressText.setText(2131493029);
    mProgressText.setVisibility(0);
  }
  
  private void displayPendingConnectMode(boolean paramBoolean)
  {
    StringBuilder localStringBuilder;
    if (TalkApp.debugLoggable())
    {
      localStringBuilder = new StringBuilder().append("displayPendingConnectMode: showProgress=");
      if (paramBoolean) {
        break label50;
      }
    }
    label50:
    for (boolean bool = true;; bool = false)
    {
      log(bool);
      if (!paramBoolean) {
        break;
      }
      mProgressText.setText(2131492962);
      return;
    }
    mProgressText.setText(2131492961);
  }
  
  private int dp2Pixels(int paramInt)
  {
    float f = getResourcesgetDisplayMetricsdensity;
    return (int)(paramInt * f + 0.5F);
  }
  
  private void hideMessage()
  {
    mProgressText.setVisibility(4);
  }
  
  private void hideNetworkError()
  {
    if (mErrorToast != null)
    {
      mErrorToast.cancel();
      mErrorToast = null;
    }
  }
  
  public static void log(String paramString)
  {
    TalkApp.LOGD("talk", "[AccountSelectionActivity] " + paramString);
  }
  
  private void registerForAccountListChanged()
  {
    mApp.addAccountListChangedListener(this);
  }
  
  private void registerForConnectionStateChanges()
  {
    if (TalkApp.debugLoggable()) {
      log("registerForConnectionStateChanges");
    }
    if (isFinishing()) {
      return;
    }
    ArrayList localArrayList = mApp.getAccountList();
    int k = 0;
    int m;
    label76:
    int i;
    TalkApp.AccountInfo localAccountInfo;
    IImSession localIImSession;
    try
    {
      m = localArrayList.size();
      if (!TalkApp.debugLoggable()) {
        break label331;
      }
      log("registerForConnectionStateChanges account cnt: " + m);
    }
    finally {}
    if (i < m)
    {
      localAccountInfo = (TalkApp.AccountInfo)localArrayList.get(i);
      localIImSession = mApp.getImSessionForAccountId(accountId);
      if (localIImSession == null) {}
    }
    for (;;)
    {
      try
      {
        if (TalkApp.debugLoggable()) {
          log("registerForConnectionStateChanges account: " + localAccountInfo);
        }
        if (mConnectionListener == null) {
          mConnectionListener = new MyConnectionListener(this);
        }
        localIImSession.addConnectionStateListener(mConnectionListener);
        j = k;
        if (!mImSessionList.contains(localIImSession))
        {
          mImSessionList.add(localIImSession);
          j = k;
        }
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("talk", "registerForConnectionStateChanges caught ", localRemoteException);
        j = k;
        continue;
      }
      i += 1;
      k = j;
      break label76;
      if (TalkApp.debugLoggable())
      {
        log("registerForConnectionStateChanges session null for " + username + " account id: " + accountId);
        break label336;
        if (k == 0) {
          break;
        }
        i = mConnectionRetry;
        mConnectionRetry = (i + 1);
        if (i >= 10) {
          break;
        }
        mHandler.postDelayed(new Runnable()
        {
          public void run()
          {
            AccountSelectionActivity.this.registerForConnectionStateChanges();
          }
        }, 3000L);
        return;
        label331:
        i = 0;
        break label76;
      }
      label336:
      int j = 1;
    }
  }
  
  private void registerForServiceStateChanged()
  {
    if (TalkApp.debugLoggable()) {
      log("registerForServiceStateChanged");
    }
    mSessionDispatchWindowOpen = true;
    mApp.addServiceAvailableCallback(mHandler, new ServiceAvailableRunnable()
    {
      public void run(IGTalkService paramAnonymousIGTalkService)
      {
        AccountSelectionActivity.this.serviceStateChanged(paramAnonymousIGTalkService);
      }
    });
  }
  
  private void serviceStateChanged(IGTalkService paramIGTalkService)
  {
    mService = paramIGTalkService;
    if (TalkApp.debugLoggable()) {
      log("serviceStateChanged service: " + mService + " mSessionDispatchWindowOpen: " + mSessionDispatchWindowOpen);
    }
    if (!mSessionDispatchWindowOpen) {
      return;
    }
    if (mService != null)
    {
      log("service connected");
      displayAccounts();
      unregisterAllSessions();
      mImSessionList.clear();
      registerForConnectionStateChanges();
      return;
    }
    log("service disconnected");
  }
  
  private void showNetworkError(int paramInt)
  {
    if (mErrorToast == null) {
      mErrorToast = Toast.makeText(this, paramInt, 0);
    }
    for (;;)
    {
      mErrorToast.show();
      return;
      Toast localToast = mErrorToast;
      Toast.makeText(this, paramInt, 0);
    }
  }
  
  private void signIn(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= mAccountListAdapter.getCount())) {
      return;
    }
    mAccountInfo = ((TalkApp.AccountInfo)mAccountListAdapter.getItem(paramInt));
    if (TalkApp.debugLoggable()) {
      log("onListItemClick: mAccountInfo: " + mAccountInfo.dump());
    }
    if (mAccountInfo.accountId != 0L) {
      AccountLoginUtils.setActiveAccount(mAccountInfo, this);
    }
    ConnectionStateOnlineReceiver.markAccountNotified(this, mAccountInfo.username);
    if (AccountLoginUtils.isSignedIn(mAccountInfo.username, mService))
    {
      mStopped = true;
      startBuddyListComboActivity(mAccountInfo, this);
      return;
    }
    mAccountInfo.loading = true;
    mAccountListAdapter.notifyDataSetChanged();
    mApp.setCurrentAccount(mAccountInfo.username);
    AccountLoginUtils.signIn(mAccountInfo.username, mService, this);
  }
  
  private void signOut(int paramInt)
  {
    try
    {
      mAccountInfo = ((TalkApp.AccountInfo)mAccountListAdapter.getItem(paramInt));
      if ((mAccountInfo == null) || (mAccountInfo.accountId == 0L))
      {
        log("signOut failed");
        return;
      }
      Object localObject = mApp.getImSessionForAccountId(mAccountInfo.accountId);
      if (localObject != null)
      {
        ((IImSession)localObject).logout();
        localObject = mApp.getActiveAccount();
        if ((localObject != null) && (mAccountInfo.accountId == accountId))
        {
          AccountLoginUtils.setInactiveAccount(mAccountInfo, mApp);
          return;
        }
      }
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("talk", "RemoteException failure", localRemoteException);
    }
  }
  
  public static void startAccountSelectionActivity(Activity paramActivity)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramActivity, AccountSelectionActivity.class);
    localIntent.setFlags(536870912);
    paramActivity.startActivity(localIntent);
    paramActivity.finish();
  }
  
  public static void startAddAccountActivity(Activity paramActivity)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramActivity, AddAccountActivity.class);
    localIntent.putExtra("account_types", new String[] { "com.google" });
    paramActivity.startActivityForResult(localIntent, 0);
  }
  
  public static void startBuddyListComboActivity(TalkApp.AccountInfo paramAccountInfo, Activity paramActivity)
  {
    if (TalkApp.debugLoggable()) {
      log("startBuddyListComboActivity: accountInfo: " + paramAccountInfo.dump());
    }
    Intent localIntent = new Intent("android.intent.action.VIEW", null);
    localIntent.setClass(paramActivity, BuddyListCombo.class);
    localIntent.putExtra("username", username);
    localIntent.putExtra("accountId", accountId);
    paramActivity.startActivity(localIntent);
    paramActivity.finish();
  }
  
  private void unregisterAllSessions()
  {
    int j = mImSessionList.size();
    int i = 0;
    while (i < j)
    {
      try
      {
        IImSession localIImSession = (IImSession)mImSessionList.get(i);
        if (TalkApp.debugLoggable()) {
          log("unregisterAllSessions account: " + localIImSession.getAccountId());
        }
        if (mConnectionListener != null) {
          localIImSession.removeConnectionStateListener(mConnectionListener);
        }
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          Log.e("talk", "unregisterAllSessions caught ", localRemoteException);
        }
      }
      i += 1;
    }
    if (mConnectionListener != null)
    {
      mConnectionListener.clearRefs();
      mConnectionListener = null;
    }
  }
  
  private void unregisterForAccountListChanged()
  {
    mApp.removeAccountListChangedListener(this);
  }
  
  private void unregisterForServiceStateChanged()
  {
    if (TalkApp.debugLoggable()) {
      log("unregisterForServiceStateChanged");
    }
    mSessionDispatchWindowOpen = false;
    mApp.removeServiceAvailableCallback(mHandler);
  }
  
  public void connectionCreated(String paramString, IImSession paramIImSession)
  {
    if (!mImSessionList.contains(paramIImSession)) {
      mImSessionList.add(paramIImSession);
    }
    try
    {
      if (mConnectionListener == null) {
        mConnectionListener = new MyConnectionListener(this);
      }
      paramIImSession.addConnectionStateListener(mConnectionListener);
      paramString = paramIImSession.getConnectionState();
      if (paramString.isOnline())
      {
        log("connectionCreated: already online");
        mConnectionListener.connectionStateChanged(paramString, null, paramIImSession.getAccountId(), paramIImSession.getUsername());
      }
      return;
    }
    catch (RemoteException paramString)
    {
      Log.e("talk", "connectionCreated caught ", paramString);
    }
  }
  
  public void onAccountListChanged()
  {
    if (mApp.getAccountList().size() == 0)
    {
      mAddingAccount = true;
      startAddAccountActivity(this);
      finish();
      return;
    }
    registerForServiceStateChanged();
  }
  
  protected final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    log("onActivityResult requestCode: " + paramInt1 + " resultCode: " + paramInt2);
    switch (paramInt1)
    {
    default: 
    case 100: 
      do
      {
        return;
      } while (paramInt2 == -1);
      finish();
      return;
    }
    mAddingAccount = false;
    if (paramInt2 != -1)
    {
      if (mApp.getAccountList().size() == 0)
      {
        finish();
        return;
      }
      displayAccounts();
      return;
    }
    registerForAccountListChanged();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mStopped = false;
    mApp = TalkApp.getApplication(this);
    if (ActivityUtils.isTablet(this)) {
      setContentView(2130968578);
    }
    for (;;)
    {
      getWindow().setBackgroundDrawableResource(2131296294);
      mProgressText = ((TextView)findViewById(2131755026));
      invalidateOptionsMenu();
      displayLoadingAccountsMode();
      registerForAccountListChanged();
      paramBundle = getListView();
      if (getResourcesgetConfigurationscreenWidthDp > 640)
      {
        ViewGroup.LayoutParams localLayoutParams = paramBundle.getLayoutParams();
        width = dp2Pixels(640);
        paramBundle.setLayoutParams(localLayoutParams);
      }
      ConnectionStateOnlineReceiver.dismissNotification(this);
      return;
      setContentView(2130968579);
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    if (paramInt == 2) {
      new AlertDialog.Builder(this).setTitle(2131492960).setIconAttribute(16843605).setMessage(mErrorMessage).setCancelable(false).setPositiveButton(2131492965, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          setResult(0);
          finish();
        }
      }).create();
    }
    return super.onCreateDialog(paramInt);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131689472, paramMenu);
    return true;
  }
  
  public void onDisplaySettings()
  {
    Intent localIntent = new Intent(this, GTalkPreferencesActivity.class);
    TalkApp.AccountInfo localAccountInfo = mApp.getActiveAccount();
    if (localAccountInfo != null)
    {
      localIntent.putExtra("accountId", accountId);
      localIntent.putExtra("username", username);
    }
    startActivity(localIntent);
  }
  
  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if (paramView != null) {
      signIn(paramInt);
    }
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    if (isFinishing()) {
      return;
    }
    clearAccountsLoading();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131755183: 
      onDisplaySettings();
      return true;
    case 2131755184: 
      HelpUtils.showHelp(this, "talk_accounts");
      return true;
    }
    mAddingAccount = true;
    startAddAccountActivity(this);
    finish();
    return true;
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu = paramMenu.findItem(2131755183);
    if (paramMenu != null)
    {
      ArrayList localArrayList = mApp.getAccountList();
      if ((localArrayList == null) || (localArrayList.size() <= 0)) {
        break label47;
      }
    }
    label47:
    for (boolean bool = true;; bool = false)
    {
      paramMenu.setEnabled(bool);
      return true;
    }
  }
  
  protected void onRestart()
  {
    super.onRestart();
    clearAccountsLoading();
    mStopped = false;
    if (!mAddingAccount) {
      registerForAccountListChanged();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    clearAccountsLoading();
    mConnectionRetry = 0;
    AccountLoginUtils.showDialogIfNoDataAccess(mApp, this);
  }
  
  protected void onStart()
  {
    super.onStart();
    mService = null;
    mApp.ensureServiceBound();
    registerForServiceStateChanged();
  }
  
  protected void onStop()
  {
    super.onStop();
    mStopped = true;
    unregisterAllSessions();
    unregisterForAccountListChanged();
    unregisterForServiceStateChanged();
  }
  
  private class ConnectionErrorCallback
    implements Runnable
  {
    private ConnectionError mError;
    
    public ConnectionErrorCallback(ConnectionError paramConnectionError)
    {
      mError = paramConnectionError;
    }
    
    private void promptForCredentials()
    {
      AccountSelectionActivity.log("prompt for passwd for " + mAccountInfo.username);
      Account localAccount = new Account(mAccountInfo.username, "com.google");
      Bundle localBundle = new Bundle();
      AccountManager.get(AccountSelectionActivity.this).getAuthToken(localAccount, "ac2dm", localBundle, AccountSelectionActivity.this, new AccountManagerCallback()
      {
        public void run(AccountManagerFuture<Bundle> paramAnonymousAccountManagerFuture)
        {
          try
          {
            paramAnonymousAccountManagerFuture = (Bundle)paramAnonymousAccountManagerFuture.getResult();
            AccountSelectionActivity.log("AccountManager.get() callback - result=" + paramAnonymousAccountManagerFuture);
            AccountLoginUtils.signIn(mAccountInfo.username, mService, AccountSelectionActivity.this);
            return;
          }
          catch (OperationCanceledException paramAnonymousAccountManagerFuture)
          {
            AccountSelectionActivity.log("promptForCredentials(): User canceled, exit");
            finish();
            return;
          }
          catch (IOException paramAnonymousAccountManagerFuture)
          {
            AccountSelectionActivity.log("promptForCredentials(): IO Error, exit");
            finish();
            return;
          }
          catch (AuthenticatorException paramAnonymousAccountManagerFuture)
          {
            AccountSelectionActivity.log("promptForCredentials(): Not authenticated");
            finish();
          }
        }
      }, null);
    }
    
    private void showConnectionOrServerErrors()
    {
      if (!isFinishing()) {
        showDialog(2);
      }
    }
    
    public void run()
    {
      Resources localResources = getResources();
      int i;
      int j;
      if (mError != null)
      {
        i = mError.getError();
        j = 1;
        if (i != 0) {
          break label49;
        }
        i = j;
      }
      for (;;)
      {
        if (i != 0) {
          AccountSelectionActivity.this.hideNetworkError();
        }
        return;
        i = 0;
        break;
        label49:
        if (ConnectionError.isNetworkError(i))
        {
          boolean bool = false;
          if (i == 1)
          {
            i = 2131492962;
            bool = true;
          }
          for (;;)
          {
            AccountSelectionActivity.this.showNetworkError(i);
            i = 0;
            AccountSelectionActivity.this.displayPendingConnectMode(bool);
            break;
            i = 2131492961;
          }
        }
        AccountSelectionActivity.access$902(AccountSelectionActivity.this, null);
        switch (i)
        {
        case 6: 
        default: 
          i = j;
          break;
        case 4: 
        case 5: 
          promptForCredentials();
          i = j;
          break;
        case 8: 
          AccountSelectionActivity.access$902(AccountSelectionActivity.this, localResources.getString(2131492963));
          showConnectionOrServerErrors();
          i = j;
          break;
        case 7: 
          AccountSelectionActivity.access$902(AccountSelectionActivity.this, localResources.getString(2131492964));
          showConnectionOrServerErrors();
          i = j;
        }
      }
    }
  }
  
  private class LoadUnreadMessageCounts
    extends AsyncTask<ContentResolver, Void, Void>
  {
    private List<TalkApp.AccountInfo> mAccountList;
    
    public LoadUnreadMessageCounts()
    {
      List localList;
      mAccountList = localList;
    }
    
    protected Void doInBackground(ContentResolver... arg1)
    {
      int j;
      int i;
      synchronized (mAccountList)
      {
        j = mAccountList.size();
        i = 0;
        while (i < j)
        {
          mAccountList.get(i)).unreadCount = 0;
          i += 1;
        }
        ??? = getContentResolver().query(TalkContract.AccountStatus.CONTENT_URI_UNREAD_CHATS, null, null, null, null);
        if (??? == null) {
          return null;
        }
      }
      for (;;)
      {
        try
        {
          synchronized (mAccountList)
          {
            if (!???.moveToNext()) {
              break;
            }
            long l = ???.getLong(0);
            j = ???.getInt(1);
            int k = mAccountList.size();
            i = 0;
            if (i >= k) {
              continue;
            }
            TalkApp.AccountInfo localAccountInfo = (TalkApp.AccountInfo)mAccountList.get(i);
            if (accountId == l) {
              unreadCount = j;
            }
          }
          i += 1;
        }
        finally
        {
          ???.close();
        }
      }
      ???.close();
      return null;
    }
    
    protected void onPostExecute(Void paramVoid)
    {
      ((AccountListAdapter)getListAdapter()).notifyDataSetChanged();
    }
  }
  
  private static class MyConnectionListener
    extends IConnectionStateListener.Stub
  {
    volatile AccountSelectionActivity mActivity;
    
    public MyConnectionListener(AccountSelectionActivity paramAccountSelectionActivity)
    {
      mActivity = paramAccountSelectionActivity;
    }
    
    public void clearRefs()
    {
      mActivity = null;
    }
    
    public void connectionStateChanged(final ConnectionState paramConnectionState, final ConnectionError paramConnectionError, final long paramLong, String paramString)
    {
      AccountSelectionActivity localAccountSelectionActivity = mActivity;
      if (localAccountSelectionActivity == null) {
        return;
      }
      StringBuilder localStringBuilder;
      if (TalkApp.debugLoggable())
      {
        localStringBuilder = new StringBuilder().append("connectionStateChanged: state: ").append(paramConnectionState.toString()).append(" error: ").append(paramConnectionError).append(" accountId: ").append(paramLong).append(" username: ").append(paramString).append(" mAccountInfo: ");
        if (mAccountInfo != null) {
          break label115;
        }
      }
      label115:
      for (String str = null;; str = mAccountInfo.dump())
      {
        AccountSelectionActivity.log(str);
        localAccountSelectionActivity.runOnUiThread(new Runnable()
        {
          public void run()
          {
            AccountSelectionActivity localAccountSelectionActivity = mActivity;
            if (localAccountSelectionActivity == null) {}
            boolean bool;
            do
            {
              return;
              bool = mApp.connectionStateChanged(paramConnectionState, paramConnectionError, paramLong, val$username);
            } while ((mAccountInfo == null) || (mStopped) || (localAccountSelectionActivity.isFinishing()));
            if (bool)
            {
              if (TalkApp.debugLoggable()) {
                AccountSelectionActivity.log("connectionStateChanged: changed is true, old mAccountInfo: " + mAccountInfo);
              }
              AccountSelectionActivity.access$202(localAccountSelectionActivity, mApp.getAccountInfo(mAccountInfo.username));
              if (TalkApp.debugLoggable()) {
                AccountSelectionActivity.log("connectionStateChanged: changed is true, new mAccountInfo: " + mAccountInfo);
              }
            }
            if (paramLong == mAccountInfo.accountId)
            {
              if (paramConnectionError != null) {}
              for (int i = paramConnectionError.getError(); (paramConnectionState.isOnline()) || ((i != 5) && (i != 4)); i = 0)
              {
                if (mApp.setCurrentAccount(mAccountInfo.username) == null) {
                  Log.e("talk", "connectionStateChanged activeAccount for " + mAccountInfo.username + " is null");
                }
                AccountSelectionActivity.access$402(localAccountSelectionActivity, true);
                AccountSelectionActivity.startBuddyListComboActivity(mAccountInfo, localAccountSelectionActivity);
                return;
              }
              Handler localHandler = mHandler;
              localAccountSelectionActivity.getClass();
              localHandler.post(new AccountSelectionActivity.ConnectionErrorCallback(localAccountSelectionActivity, paramConnectionError));
            }
            mAccountListAdapter.notifyDataSetChanged();
          }
        });
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountSelectionActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */