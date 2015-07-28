package com.google.android.talk;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.UserManager;
import android.provider.MediaStore.Audio.Media;
import android.provider.SearchRecentSuggestions;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gsf.Gservices;
import com.google.android.gsf.TalkContract.AccountSettings.QueryMap;
import com.google.android.gtalkservice.ConnectionError;
import com.google.android.gtalkservice.ConnectionState;
import com.google.android.gtalkservice.GroupChatInvitation;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IGTalkService.Stub;
import com.google.android.gtalkservice.IImSession;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.atomic.AtomicBoolean;

public class TalkApp
  extends Application
{
  private static HashMap<String, DatabaseUtils.AvatarData> mSelfAvatarMap = new HashMap();
  private static int mTalkLogLevel = ;
  private ArrayList<AccountInfo> mAccountList = new ArrayList();
  private volatile boolean mAccountsLoaded;
  private final ArrayList<AccountListChangeListener> mAccountsLoadedListeners = new ArrayList();
  private RetrieveGTalkAccounts mAccountsRetriever;
  Drawable mAndroidConnectionIconDarkBg;
  Drawable mAndroidConnectionIconLightBg;
  private Handler mAppHandler;
  int[] mAvailablePresenceIcon = new int[3];
  int[] mAwayPresenceIcon = new int[3];
  int[] mBusyPresenceIcon = new int[3];
  public Drawable mChatStatusIcon;
  private ServiceConnection mConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      TalkApp.logd("service connected: mService=" + mServiceState);
      mServiceState.setService(IGTalkService.Stub.asInterface(paramAnonymousIBinder));
    }
    
    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      mServiceBound.set(false);
      TalkApp.logd("service disconnected...");
      mServiceState.clearService();
    }
  };
  public String[] mDefaultStatusStrings;
  private volatile String mDefaultTextNotificationUri;
  ColorFilter mDesaturatedColorFilter;
  private AsyncTask<Void, Void, String> mFindRingtone = new AsyncTask()
  {
    protected String doInBackground(Void... paramAnonymousVarArgs)
    {
      Cursor localCursor = getContentResolver().query(MediaStore.Audio.Media.INTERNAL_CONTENT_URI, new String[] { "_id" }, "title=?", new String[] { "Mira" }, null);
      if (localCursor == null) {
        return null;
      }
      paramAnonymousVarArgs = null;
      try
      {
        if (localCursor.moveToFirst())
        {
          paramAnonymousVarArgs = MediaStore.Audio.Media.INTERNAL_CONTENT_URI + "/" + localCursor.getString(0);
          TalkApp.access$902(TalkApp.this, paramAnonymousVarArgs);
        }
        return paramAnonymousVarArgs;
      }
      finally
      {
        localCursor.close();
      }
    }
    
    protected void onPostExecute(String paramAnonymousString)
    {
      if (paramAnonymousString != null) {
        TalkApp.this.setDefaultRingtoneUriForAllAccounts(paramAnonymousString);
      }
    }
  };
  private Intent mGTalkServiceIntent;
  public Drawable mGenericAvatar;
  private GlobalCallStateMonitor mGlobalCallStateMonitor;
  private GmailProviderWrapper mGmail;
  public Drawable mGroupAvatar;
  public HashMap<String, GroupChatInvitation> mGroupChatInvitations;
  int mInvisiblePresenceIcon;
  private String[] mJidDomainsToHide;
  Drawable mMobileConnectionIconDarkBg;
  Drawable mMobileConnectionIconLightBg;
  ColorFilter mOfflineColorFilter;
  int mOfflinePresenceIcon;
  private SearchRecentSuggestions mRecentSuggestions;
  private final AtomicBoolean mServiceBound = new AtomicBoolean(false);
  private final TalkServiceState mServiceState = new TalkServiceState();
  private final BroadcastReceiver mSettingsMonitor = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = paramAnonymousIntent.getAction();
      TalkApp.logd("mSettingsMonitor.onReceive: action=" + paramAnonymousContext);
      if (("android.net.conn.BACKGROUND_DATA_SETTING_CHANGED".equals(paramAnonymousContext)) && (isBackgroundDataEnabled())) {
        rebindService();
      }
    }
  };
  
  public TalkApp()
  {
    LOGV("talk", "##### TalkApp constructor #####");
    mGroupChatInvitations = new HashMap();
  }
  
  public static void LOG(int paramInt, String paramString1, String paramString2)
  {
    if (paramInt >= mTalkLogLevel) {
      Log.println(paramInt, paramString1, paramString2);
    }
  }
  
  public static void LOGD(String paramString1, String paramString2)
  {
    LOG(3, paramString1, paramString2);
  }
  
  public static void LOGE(String paramString1, String paramString2)
  {
    Log.e(paramString1, paramString2);
  }
  
  public static void LOGE(String paramString1, String paramString2, Throwable paramThrowable)
  {
    Log.e(paramString1, paramString2, paramThrowable);
  }
  
  public static void LOGI(String paramString1, String paramString2)
  {
    Log.i(paramString1, paramString2);
  }
  
  public static void LOGV(String paramString1, String paramString2)
  {
    LOG(2, paramString1, paramString2);
  }
  
  public static void LOGW(String paramString1, String paramString2)
  {
    Log.w(paramString1, paramString2);
  }
  
  public static void Logwtf(String paramString1, String paramString2)
  {
    Log.e(paramString1, paramString2);
    Log.wtf(paramString1, paramString2);
  }
  
  private void bindService()
  {
    if (mServiceBound.compareAndSet(false, true))
    {
      logd("bindService");
      mGTalkServiceIntent = new Intent(new Intent(IGTalkService.class.getName()));
      startService(mGTalkServiceIntent);
      logd("--- bindGTalkService ---");
      bindService(mGTalkServiceIntent, mConnection, 1);
      return;
    }
    logd("skipping bindService; bind already pending");
  }
  
  private void broadcastAccountIdUpdate(AccountInfo paramAccountInfo)
  {
    synchronized (mAccountsLoadedListeners)
    {
      int i = mAccountsLoadedListeners.size();
      AccountListChangeListener[] arrayOfAccountListChangeListener = (AccountListChangeListener[])mAccountsLoadedListeners.toArray(new AccountListChangeListener[i]);
      if (debugLoggable()) {
        logd("broadcastAccountIdUpdate count: " + i);
      }
      int j = arrayOfAccountListChangeListener.length;
      i = 0;
      if (i < j)
      {
        ??? = arrayOfAccountListChangeListener[i];
        if ((??? instanceof AccountIdUpdatedListener)) {
          ((AccountIdUpdatedListener)???).onAccountIdUpdated(paramAccountInfo);
        }
        i += 1;
      }
    }
  }
  
  private void broadcastAccountListChanged()
  {
    synchronized (mAccountsLoadedListeners)
    {
      int i = mAccountsLoadedListeners.size();
      AccountListChangeListener[] arrayOfAccountListChangeListener = (AccountListChangeListener[])mAccountsLoadedListeners.toArray(new AccountListChangeListener[i]);
      if (debugLoggable()) {
        logd("broadcastAccountListChanged count: " + i);
      }
      int j = arrayOfAccountListChangeListener.length;
      i = 0;
      if (i < j)
      {
        arrayOfAccountListChangeListener[i].onAccountListChanged();
        i += 1;
      }
    }
  }
  
  private int computeCapabilityIndex(int paramInt)
  {
    if (ActivityUtils.isVideoChatCapable(paramInt)) {
      return 2;
    }
    if (ActivityUtils.isAudioChatCapable(paramInt)) {
      return 1;
    }
    return 0;
  }
  
  private void constructCachedDrawables()
  {
    Resources localResources = getResources();
    mGenericAvatar = localResources.getDrawable(2130837577);
    mGroupAvatar = localResources.getDrawable(2130837581);
    mAvailablePresenceIcon[0] = 17301611;
    mAvailablePresenceIcon[1] = 17301681;
    mAvailablePresenceIcon[2] = 17301678;
    mAwayPresenceIcon[0] = 17301607;
    mAwayPresenceIcon[1] = 17301679;
    mAwayPresenceIcon[2] = 17301676;
    mBusyPresenceIcon[0] = 17301608;
    mBusyPresenceIcon[1] = 17301680;
    mBusyPresenceIcon[2] = 17301677;
    mOfflinePresenceIcon = 17301610;
    mInvisiblePresenceIcon = 17301609;
    mAndroidConnectionIconLightBg = localResources.getDrawable(2130837646);
    mMobileConnectionIconLightBg = localResources.getDrawable(2130837649);
    mAndroidConnectionIconDarkBg = localResources.getDrawable(2130837644);
    mMobileConnectionIconDarkBg = localResources.getDrawable(2130837647);
    mChatStatusIcon = localResources.getDrawable(2130837698);
    String str = localResources.getString(2131492867);
    mDefaultStatusStrings = new String[] { localResources.getString(2131492868), localResources.getString(2131492869), str, str, localResources.getString(2131492866), localResources.getString(2131492865) };
    mOfflineColorFilter = new PorterDuffColorFilter(-1434419072, PorterDuff.Mode.SRC_ATOP);
  }
  
  public static boolean debugLoggable()
  {
    return 3 >= mTalkLogLevel;
  }
  
  public static TalkApp getApplication(Activity paramActivity)
  {
    return (TalkApp)paramActivity.getApplication();
  }
  
  public static int getLogLevelForTag(String paramString)
  {
    if (Log.isLoggable(paramString, 2)) {
      return 2;
    }
    if (Log.isLoggable(paramString, 3)) {
      return 3;
    }
    if (Log.isLoggable(paramString, 4)) {
      return 4;
    }
    if (Log.isLoggable(paramString, 5)) {
      return 5;
    }
    return 6;
  }
  
  private static int getLogLevelForTalk()
  {
    return getLogLevelForTag("talk");
  }
  
  public static int getTalkLogLevel()
  {
    return mTalkLogLevel;
  }
  
  private void initializeDefaultTextNotificationUri()
  {
    mFindRingtone.execute(new Void[0]);
  }
  
  public static boolean isDisallowedUser(Context paramContext)
  {
    if (Gservices.getBoolean(paramContext.getContentResolver(), "gtalk_allow_nonprimary_user", false)) {}
    do
    {
      return false;
      paramContext = (UserManager)paramContext.getSystemService("user");
    } while (paramContext == null);
    for (;;)
    {
      try
      {
        int i = ((Integer)paramContext.getClass().getMethod("getUserHandle", new Class[0]).invoke(paramContext, new Object[0])).intValue();
        if (i != 0)
        {
          bool = true;
          return bool;
        }
      }
      catch (Throwable paramContext)
      {
        Log.e("talk", "Can't get user", paramContext);
        return false;
      }
      boolean bool = false;
    }
  }
  
  private static void logd(String paramString)
  {
    LOG(3, "talk", "[TalkApp] " + paramString);
  }
  
  private void pruneOldChats(IImSession paramIImSession)
  {
    if (paramIImSession == null)
    {
      Log.e("talk", "pruneOldChats: empty IM session, bail.");
      return;
    }
    for (;;)
    {
      try
      {
        ContentResolver localContentResolver = getContentResolver();
        long l1 = System.currentTimeMillis();
        long l2 = Gservices.getLong(localContentResolver, "gtalk_chat_expire", 14400000L);
        long l3 = Gservices.getLong(localContentResolver, "gtalk_chat_expire_for_other_client", 3600000L);
        long l4 = Gservices.getLong(localContentResolver, "gtalk_chat_message_lifetime", 604800000L);
        if (!ActivityUtils.isTablet(this))
        {
          bool = true;
          paramIImSession.pruneOldChatSessions(l1 - l2, l1 - l4, l1 - l3, bool);
          return;
        }
      }
      catch (RemoteException paramIImSession)
      {
        Log.e("talk", "asyncPruneChats caught ", paramIImSession);
        return;
      }
      boolean bool = false;
    }
  }
  
  public static int queryDebugLevel()
  {
    if (Log.isLoggable("talk", 2)) {
      return 2;
    }
    if (Log.isLoggable("talk", 3)) {
      return 1;
    }
    return 0;
  }
  
  public static int refreshTalkLogLevel()
  {
    mTalkLogLevel = getLogLevelForTalk();
    return mTalkLogLevel;
  }
  
  private void setDefaultRingtoneUriForAccount(String paramString, long paramLong)
  {
    TalkContract.AccountSettings.QueryMap localQueryMap = SettingsCache.getInstance().getSettingsMap(paramLong);
    if ((localQueryMap != null) && (localQueryMap.getValues("ringtone") == null)) {
      localQueryMap.setTextRingtoneURI(paramString);
    }
  }
  
  private void setDefaultRingtoneUriForAllAccounts(String paramString)
  {
    Iterator localIterator = DatabaseUtils.getAccountIds(getContentResolver()).iterator();
    while (localIterator.hasNext()) {
      setDefaultRingtoneUriForAccount(paramString, ((Long)localIterator.next()).longValue());
    }
  }
  
  public static boolean verboseLoggable()
  {
    return 2 >= mTalkLogLevel;
  }
  
  private void verifyAccountInPrefs()
  {
    int i = 0;
    Object localObject = getSharedPreferences("gtalk_prefs", 0);
    long l = ((SharedPreferences)localObject).getLong("accountId", 0L);
    localObject = ((SharedPreferences)localObject).getString("username", null);
    if ((l != 0L) || (!TextUtils.isEmpty((CharSequence)localObject))) {
      i = 1;
    }
    int j = i;
    if (i != 0)
    {
      localObject = getAccountInfo((String)localObject);
      j = i;
      if (localObject != null)
      {
        j = i;
        if (accountId == l) {
          j = 0;
        }
      }
    }
    if (j != 0) {
      AccountLoginUtils.clearActiveAccountPrefs(this);
    }
  }
  
  public void addAccountListChangedListener(AccountListChangeListener paramAccountListChangeListener)
  {
    synchronized (mAccountsLoadedListeners)
    {
      Iterator localIterator = mAccountsLoadedListeners.iterator();
      while (localIterator.hasNext()) {
        if (paramAccountListChangeListener == (AccountListChangeListener)localIterator.next()) {
          return;
        }
      }
      mAccountsLoadedListeners.add(paramAccountListChangeListener);
      if (mAccountsLoaded)
      {
        paramAccountListChangeListener.onAccountListChanged();
        return;
      }
    }
  }
  
  public void addImSessionAvailableCallback(Handler paramHandler, long paramLong, SessionAvailableRunnable paramSessionAvailableRunnable)
  {
    mServiceState.addSessionAvailableCallback(paramHandler, paramLong, paramSessionAvailableRunnable);
  }
  
  public void addServiceAvailableCallback(Handler paramHandler, ServiceAvailableRunnable paramServiceAvailableRunnable)
  {
    mServiceState.addServiceAvailableCallback(paramHandler, paramServiceAvailableRunnable);
  }
  
  public void asyncPruneOldChatsAndMessages(final IImSession paramIImSession)
  {
    new Thread(new Runnable()
    {
      public void run()
      {
        DatabaseUtils.pruneOldMessageHistory(getContentResolver());
        TalkApp.this.pruneOldChats(paramIImSession);
      }
    }).start();
  }
  
  public void clearSelfAvatarCache()
  {
    try
    {
      mSelfAvatarMap.clear();
      return;
    }
    finally {}
  }
  
  public boolean connectionStateChanged(ConnectionState paramConnectionState, ConnectionError paramConnectionError, long paramLong, String paramString)
  {
    logd("connectionStateChanged: state=" + paramConnectionState.toString() + ", error=" + paramConnectionError + ", accountId=" + paramLong + " username: " + paramString);
    paramConnectionState = getAccountInfo(paramString);
    if (paramConnectionState == null) {
      Log.v("talk", "connectionStateChanged: can't find account for: " + paramString);
    }
    do
    {
      return false;
      if (accountId == 0L)
      {
        accountId = paramLong;
        broadcastAccountIdUpdate(paramConnectionState);
        return true;
      }
    } while (accountId == paramLong);
    Log.v("talk", "connectionStateChanged: account for: " + paramString + " has accountId: " + accountId + " but the state change says the accountId is: " + paramLong);
    return false;
  }
  
  public void dumpAccountList()
  {
    if (getTalkLogLevel() <= 3)
    {
      int j = mAccountList.size();
      logd("dumpAccountList account count: " + j);
      int i = 0;
      while (i < j)
      {
        AccountInfo localAccountInfo = (AccountInfo)mAccountList.get(i);
        logd("dump - account id: " + accountId + " username: " + username + " active: " + active + " signedIn: " + signedIn);
        i += 1;
      }
    }
  }
  
  public void ensureServiceBound()
  {
    if (getGTalkService() != null) {
      return;
    }
    logd("ensureServiceBound calling bindService");
    bindService();
  }
  
  long getAccountIdFromActivityIntent(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      Log.w("talk", "[TalkApp] getAccountIdFromActivityIntent: null intent");
      return 0L;
    }
    return paramIntent.getLongExtra("accountId", 0L);
  }
  
  public AccountInfo getAccountInfo(long paramLong)
  {
    if (mAccountList != null)
    {
      int j = mAccountList.size();
      int i = 0;
      while (i < j)
      {
        AccountInfo localAccountInfo = (AccountInfo)mAccountList.get(i);
        if (accountId == paramLong)
        {
          logd("getAccountInfo: " + localAccountInfo);
          return localAccountInfo;
        }
        i += 1;
      }
    }
    if (getTalkLogLevel() <= 3)
    {
      logd("getAccountInfo: can't find account for " + paramLong);
      dumpAccountList();
    }
    return null;
  }
  
  public AccountInfo getAccountInfo(String paramString)
  {
    if (mAccountList != null)
    {
      int j = mAccountList.size();
      int i = 0;
      while (i < j)
      {
        AccountInfo localAccountInfo = (AccountInfo)mAccountList.get(i);
        if (username.equals(paramString))
        {
          logd("getAccountInfo: " + localAccountInfo);
          return localAccountInfo;
        }
        i += 1;
      }
    }
    if (getTalkLogLevel() <= 3)
    {
      logd("getAccountInfo: can't find account for " + paramString);
      dumpAccountList();
    }
    return null;
  }
  
  public ArrayList<AccountInfo> getAccountList()
  {
    logd("getAccounts mAccountList count: " + mAccountList.size());
    return mAccountList;
  }
  
  public AccountInfo getActiveAccount()
  {
    Object localObject = getSharedPreferences("gtalk_prefs", 0);
    long l = ((SharedPreferences)localObject).getLong("accountId", 0L);
    String str = ((SharedPreferences)localObject).getString("username", null);
    localObject = null;
    if ((!TextUtils.isEmpty(str)) || (l != 0L))
    {
      localObject = new AccountInfo();
      accountId = l;
      username = str;
    }
    return (AccountInfo)localObject;
  }
  
  public int getAudioVideoButtonIcon(int paramInt)
  {
    if (ActivityUtils.isVideoChatCapable(paramInt)) {
      return 2130837615;
    }
    if (ActivityUtils.isAudioChatCapable(paramInt)) {
      return 2130837566;
    }
    return 0;
  }
  
  public Drawable getConnectionTypeIndicator(int paramInt, boolean paramBoolean)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 2: 
      if (paramBoolean) {
        return mAndroidConnectionIconLightBg;
      }
      return mAndroidConnectionIconDarkBg;
    }
    if (paramBoolean) {
      return mMobileConnectionIconLightBg;
    }
    return mMobileConnectionIconDarkBg;
  }
  
  public ColorFilter getDesaturedColorFilter()
  {
    if (mDesaturatedColorFilter == null)
    {
      ColorMatrix localColorMatrix1 = new ColorMatrix();
      localColorMatrix1.setSaturation(0.0F);
      ColorMatrix localColorMatrix2 = new ColorMatrix();
      float f1 = 1.0F - 0.3F;
      float f2 = (0.3F + 0.0F) * 255.0F;
      localColorMatrix2.set(new float[] { f1, 0.0F, 0.0F, 0.0F, f2, 0.0F, f1, 0.0F, 0.0F, f2, 0.0F, 0.0F, f1, 0.0F, f2, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F });
      ColorMatrix localColorMatrix3 = new ColorMatrix();
      localColorMatrix3.setConcat(localColorMatrix1, localColorMatrix2);
      mDesaturatedColorFilter = new ColorMatrixColorFilter(localColorMatrix3);
    }
    return mDesaturatedColorFilter;
  }
  
  public IGTalkService getGTalkService()
  {
    return mServiceState.getService();
  }
  
  public Drawable getGenericAvatar()
  {
    return mGenericAvatar;
  }
  
  public GmailProviderWrapper getGmailProvider()
  {
    if (mGmail == null) {
      mGmail = new GmailProviderWrapper(getContentResolver());
    }
    return mGmail;
  }
  
  IImSession getImSessionForAccountId(long paramLong)
  {
    if (paramLong == 0L) {
      return null;
    }
    Object localObject = getGTalkService();
    if (localObject == null)
    {
      Log.w("talk", "[TalkApp] getImSessionForAccountId: null GTalk service!");
      return null;
    }
    try
    {
      localObject = ((IGTalkService)localObject).getImSessionForAccountId(paramLong);
      return (IImSession)localObject;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("talk", "getImSessionForAccountId: caught " + localRemoteException);
    }
    return null;
  }
  
  IImSession getImSessionFromActivityIntent(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      Log.w("talk", "[TalkApp] getImSessionFromActivityIntent: null intent");
      return null;
    }
    return getImSessionForAccountId(Long.valueOf(paramIntent.getLongExtra("accountId", 0L)).longValue());
  }
  
  public SearchRecentSuggestions getRecentSuggestions()
  {
    if (mRecentSuggestions == null) {
      mRecentSuggestions = new SearchRecentSuggestions(this, "com.google.android.talk.SuggestionProvider", 3);
    }
    return mRecentSuggestions;
  }
  
  /* Error */
  public void getSelfAvatarDataForAccount(AccountInfo paramAccountInfo, SelfAvatarReadyRunnable paramSelfAvatarReadyRunnable)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 108	com/google/android/talk/TalkApp:mSelfAvatarMap	Ljava/util/HashMap;
    //   5: aload_1
    //   6: getfield 668	com/google/android/talk/TalkApp$AccountInfo:username	Ljava/lang/String;
    //   9: invokevirtual 794	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   12: checkcast 796	com/google/android/talk/DatabaseUtils$AvatarData
    //   15: astore_3
    //   16: aload_3
    //   17: ifnull +13 -> 30
    //   20: aload_2
    //   21: aload_3
    //   22: invokeinterface 800 2 0
    //   27: aload_0
    //   28: monitorexit
    //   29: return
    //   30: new 30	com/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask
    //   33: dup
    //   34: aload_0
    //   35: aload_0
    //   36: invokevirtual 468	com/google/android/talk/TalkApp:getContentResolver	()Landroid/content/ContentResolver;
    //   39: aload_2
    //   40: invokespecial 803	com/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask:<init>	(Lcom/google/android/talk/TalkApp;Landroid/content/ContentResolver;Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;)V
    //   43: iconst_1
    //   44: anewarray 21	com/google/android/talk/TalkApp$AccountInfo
    //   47: dup
    //   48: iconst_0
    //   49: aload_1
    //   50: aastore
    //   51: invokevirtual 804	com/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask:execute	([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   54: pop
    //   55: goto -28 -> 27
    //   58: astore_1
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_1
    //   62: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	this	TalkApp
    //   0	63	1	paramAccountInfo	AccountInfo
    //   0	63	2	paramSelfAvatarReadyRunnable	SelfAvatarReadyRunnable
    //   15	7	3	localAvatarData	DatabaseUtils.AvatarData
    // Exception table:
    //   from	to	target	type
    //   2	16	58	finally
    //   20	27	58	finally
    //   27	29	58	finally
    //   30	55	58	finally
    //   59	61	58	finally
  }
  
  public int getStatusColorId(int paramInt)
  {
    switch (paramInt)
    {
    case 1: 
    default: 
      return 2130837656;
    case 5: 
      return 2130837677;
    case 2: 
    case 3: 
      return 2130837509;
    case 4: 
      return 2130837539;
    }
    return 2130837663;
  }
  
  public int getStatusIcon(int paramInt1, int paramInt2)
  {
    paramInt2 = computeCapabilityIndex(paramInt2);
    switch (paramInt1)
    {
    default: 
      return mOfflinePresenceIcon;
    case 5: 
      return mAvailablePresenceIcon[paramInt2];
    case 2: 
    case 3: 
      return mAwayPresenceIcon[paramInt2];
    case 4: 
      return mBusyPresenceIcon[paramInt2];
    }
    return mInvisiblePresenceIcon;
  }
  
  public boolean isAccountIdValid(long paramLong)
  {
    mAccountsRetriever.waitForAccounts();
    Object localObject = mAccountList;
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        if (nextaccountId == paramLong) {
          return true;
        }
      }
    }
    return false;
  }
  
  public boolean isBackgroundDataEnabled()
  {
    return ((ConnectivityManager)getSystemService("connectivity")).getBackgroundDataSetting();
  }
  
  public void loadAccounts()
  {
    logd("loadAccounts");
    mAccountsLoaded = false;
    mAccountsRetriever = new RetrieveGTalkAccounts(AccountManager.get(this).getAccountsByType("com.google"));
    mAccountsRetriever.execute(new ContentResolver[] { getContentResolver() });
  }
  
  public void onCreate()
  {
    super.onCreate();
    mAppHandler = new Handler();
    bindService();
    AvatarCache.initialize(this);
    PictureCache.initialize(this);
    SettingsCache.initialize(this, new Handler());
    constructCachedDrawables();
    loadAccounts();
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.BACKGROUND_DATA_SETTING_CHANGED");
    registerReceiver(mSettingsMonitor, localIntentFilter);
    FeatureManager.setAvailableFeaturesAllAccounts(this, null);
    mGlobalCallStateMonitor = new GlobalCallStateMonitor(this);
    mGlobalCallStateMonitor.startListening();
    initializeDefaultTextNotificationUri();
  }
  
  public void onTerminate()
  {
    logd("##### onTerminate #####");
    AvatarCache.destroyAll(this);
    PictureCache.destroyAll(this);
    SettingsCache.destroyAll();
    if (mConnection != null)
    {
      unbindService(mConnection);
      mConnection = null;
    }
    unregisterReceiver(mSettingsMonitor);
    super.onTerminate();
  }
  
  void rebindService()
  {
    if (getGTalkService() != null) {}
    try
    {
      unbindService(mConnection);
      mServiceBound.set(false);
      mServiceState.clearService();
      bindService();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        Log.e("talk", "Can't unbind service: ", localIllegalArgumentException);
      }
    }
  }
  
  public void removeAccountListChangedListener(AccountListChangeListener paramAccountListChangeListener)
  {
    synchronized (mAccountsLoadedListeners)
    {
      Iterator localIterator = mAccountsLoadedListeners.iterator();
      while (localIterator.hasNext())
      {
        AccountListChangeListener localAccountListChangeListener = (AccountListChangeListener)localIterator.next();
        if (paramAccountListChangeListener == localAccountListChangeListener)
        {
          mAccountsLoadedListeners.remove(localAccountListChangeListener);
          return;
        }
      }
      return;
    }
  }
  
  public void removeImSessionAvailableCallback(Handler paramHandler)
  {
    mServiceState.removeSessionAvailableCallback(paramHandler);
  }
  
  public void removeServiceAvailableCallback(Handler paramHandler)
  {
    mServiceState.removeServiceAvailableCallback(paramHandler);
  }
  
  public AccountInfo setCurrentAccount(String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    if (mAccountList != null)
    {
      int j = mAccountList.size();
      int i = 0;
      localObject2 = localObject1;
      if (i < j)
      {
        localObject2 = (AccountInfo)mAccountList.get(i);
        if (username.equals(paramString))
        {
          active = true;
          localObject1 = localObject2;
        }
        for (;;)
        {
          i += 1;
          break;
          active = false;
        }
      }
    }
    return (AccountInfo)localObject2;
  }
  
  public void setDefaultRingtoneForAccount(long paramLong)
  {
    if (mDefaultTextNotificationUri == null) {
      return;
    }
    setDefaultRingtoneUriForAccount(mDefaultTextNotificationUri, paramLong);
  }
  
  void setImSessionAvailable(final String paramString, final IImSession paramIImSession)
  {
    Handler localHandler = mAppHandler;
    if (localHandler == null)
    {
      Logwtf("talk", "null mAppHandler in setImSessionAvailable");
      return;
    }
    localHandler.post(new Runnable()
    {
      public void run()
      {
        TalkApp.AccountListChangeListener local1 = new TalkApp.AccountListChangeListener()
        {
          public void onAccountListChanged()
          {
            TalkApp.AccountInfo localAccountInfo = getAccountInfo(val$username);
            if (localAccountInfo == null) {
              if (TalkApp.debugLoggable()) {
                Log.e("talk", "setImSessionAvailable couldn't find account info for username " + val$username);
              }
            }
            for (;;)
            {
              removeAccountListChangedListener(this);
              return;
              Log.e("talk", "setImSessionAvailable couldn't find account info for username.");
              continue;
              long l = accountId;
              mServiceState.setImSessionAvailable(l, val$session);
            }
          }
        };
        addAccountListChangedListener(local1);
      }
    });
  }
  
  public void setInactiveAccount(long paramLong)
  {
    if (mAccountList != null)
    {
      int j = mAccountList.size();
      int i = 0;
      while (i < j)
      {
        AccountInfo localAccountInfo = (AccountInfo)mAccountList.get(i);
        if (accountId == paramLong)
        {
          active = false;
          signedIn = false;
        }
        i += 1;
      }
    }
  }
  
  public boolean shouldHideRemoteJid(String paramString)
  {
    boolean bool2 = false;
    if (mJidDomainsToHide == null) {
      mJidDomainsToHide = Gservices.getString(getContentResolver(), "gtalk_ppjid_domains", "public.talk.google.com").split(",");
    }
    paramString = StringUtils.parseDomain(paramString);
    boolean bool1 = bool2;
    String[] arrayOfString;
    int j;
    int i;
    if (paramString != null)
    {
      arrayOfString = mJidDomainsToHide;
      j = arrayOfString.length;
      i = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      if (i < j)
      {
        if (arrayOfString[i].equals(paramString)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  static abstract interface AccountIdUpdatedListener
    extends TalkApp.AccountListChangeListener
  {
    public abstract void onAccountIdUpdated(TalkApp.AccountInfo paramAccountInfo);
  }
  
  public static class AccountInfo
  {
    public long accountId;
    public boolean active;
    public boolean autoLoggingIn;
    public boolean loading;
    public boolean signedIn;
    public int unreadCount;
    public String username;
    
    public String dump()
    {
      return "accountId: " + accountId + " username: " + username + " signedIn: " + signedIn + " autoLoggingIn: " + autoLoggingIn + " active: " + active;
    }
    
    public String toString()
    {
      return username;
    }
  }
  
  static abstract interface AccountListChangeListener
  {
    public abstract void onAccountListChanged();
  }
  
  private class RetrieveGTalkAccounts
    extends AsyncTask<ContentResolver, Void, List<TalkApp.AccountInfo>>
  {
    private boolean mCompleted;
    private Account[] mDeviceAccounts;
    
    public RetrieveGTalkAccounts(Account[] paramArrayOfAccount)
    {
      mDeviceAccounts = paramArrayOfAccount;
      TalkApp.logd("RetrieveGTalkAccounts account count: " + paramArrayOfAccount.length);
    }
    
    protected List<TalkApp.AccountInfo> doInBackground(ContentResolver... paramVarArgs)
    {
      List localList = DatabaseUtils.getAllAccountInfos(paramVarArgs[0]);
      mAccountList.clear();
      TalkApp.logd("RetrieveGTalkAccounts.onPostExecute size: " + localList.size() + " mDeviceAccounts.length: " + mDeviceAccounts.length);
      int i = 0;
      while (i < mDeviceAccounts.length)
      {
        ListIterator localListIterator = localList.listIterator();
        paramVarArgs = null;
        int k = 0;
        TalkApp.AccountInfo localAccountInfo;
        do
        {
          j = k;
          if (!localListIterator.hasNext()) {
            break;
          }
          localAccountInfo = (TalkApp.AccountInfo)localListIterator.next();
          TalkApp.logd("gtalkAccount name: " + username);
          paramVarArgs = localAccountInfo;
        } while (!username.equals(mDeviceAccounts[i].name));
        int j = 1;
        paramVarArgs = localAccountInfo;
        if (j == 0)
        {
          paramVarArgs = new TalkApp.AccountInfo();
          username = mDeviceAccounts[i].name;
        }
        mAccountList.add(paramVarArgs);
        i += 1;
      }
      TalkApp.this.verifyAccountInPrefs();
      try
      {
        mCompleted = true;
        notifyAll();
        return localList;
      }
      finally {}
    }
    
    protected void onPostExecute(List<TalkApp.AccountInfo> paramList)
    {
      TalkApp.access$602(TalkApp.this, true);
      TalkApp.logd("RetrieveGTalkAccountsonPostExecute mAccountList count: " + mAccountList.size());
      TalkApp.this.broadcastAccountListChanged();
    }
    
    /* Error */
    public void waitForAccounts()
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 119	com/google/android/talk/TalkApp$RetrieveGTalkAccounts:mCompleted	Z
      //   6: ifeq +6 -> 12
      //   9: aload_0
      //   10: monitorexit
      //   11: return
      //   12: aload_0
      //   13: invokevirtual 148	java/lang/Object:wait	()V
      //   16: aload_0
      //   17: monitorexit
      //   18: goto -18 -> 0
      //   21: astore_1
      //   22: aload_0
      //   23: monitorexit
      //   24: aload_1
      //   25: athrow
      //   26: astore_1
      //   27: goto -11 -> 16
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	30	0	this	RetrieveGTalkAccounts
      //   21	4	1	localObject	Object
      //   26	1	1	localInterruptedException	InterruptedException
      // Exception table:
      //   from	to	target	type
      //   2	11	21	finally
      //   12	16	21	finally
      //   16	18	21	finally
      //   22	24	21	finally
      //   12	16	26	java/lang/InterruptedException
    }
  }
  
  private class RetrieveSelfAccountAvatarTask
    extends DatabaseUtils.RetrieveAccountAvatarTask
  {
    TalkApp.AccountInfo mAccountInfo;
    TalkApp.SelfAvatarReadyRunnable mOnLoaded;
    
    public RetrieveSelfAccountAvatarTask(ContentResolver paramContentResolver, TalkApp.SelfAvatarReadyRunnable paramSelfAvatarReadyRunnable)
    {
      super(null);
      mOnLoaded = paramSelfAvatarReadyRunnable;
    }
    
    protected DatabaseUtils.AvatarData doInBackground(TalkApp.AccountInfo... paramVarArgs)
    {
      mAccountInfo = paramVarArgs[0];
      return super.doInBackground(paramVarArgs);
    }
    
    protected void onPostExecute(DatabaseUtils.AvatarData paramAvatarData)
    {
      synchronized (TalkApp.this)
      {
        TalkApp.mSelfAvatarMap.put(mAccountInfo.username, paramAvatarData);
        super.onPostExecute(paramAvatarData);
        if (mOnLoaded != null) {
          mOnLoaded.run(paramAvatarData);
        }
        return;
      }
    }
  }
  
  public static abstract interface SelfAvatarReadyRunnable
  {
    public abstract void run(DatabaseUtils.AvatarData paramAvatarData);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkApp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */