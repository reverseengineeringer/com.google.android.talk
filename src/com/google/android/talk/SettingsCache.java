package com.google.android.talk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import com.google.android.gsf.TalkContract.AccountSettings.QueryMap;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class SettingsCache
{
  private static Handler mHandler;
  private static SettingsCache sInstance;
  private static Object sInstanceLock = new Object();
  private final BroadcastReceiver mAccountsChangedReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context arg1, Intent paramAnonymousIntent)
    {
      synchronized (SettingsCache.sInstanceLock)
      {
        SettingsCache.this.reset();
        return;
      }
    }
  };
  private Context mContext;
  private Map<Long, TalkContract.AccountSettings.QueryMap> mSettingsQueryMap;
  
  private SettingsCache(Context paramContext)
  {
    mContext = paramContext;
    mSettingsQueryMap = new HashMap();
    paramContext.registerReceiver(mAccountsChangedReceiver, new IntentFilter("android.accounts.LOGIN_ACCOUNTS_CHANGED"));
  }
  
  public static void destroyAll()
  {
    if (sInstance != null)
    {
      sInstance.reset();
      sInstancemSettingsQueryMap = null;
      sInstance = null;
    }
  }
  
  public static SettingsCache getInstance()
  {
    return sInstance;
  }
  
  public static void initialize(Context paramContext, Handler paramHandler)
  {
    synchronized (sInstanceLock)
    {
      sInstance = new SettingsCache(paramContext);
      mHandler = paramHandler;
      return;
    }
  }
  
  private void reset()
  {
    try
    {
      Iterator localIterator = mSettingsQueryMap.values().iterator();
      while (localIterator.hasNext()) {
        ((TalkContract.AccountSettings.QueryMap)localIterator.next()).close();
      }
      mSettingsQueryMap.clear();
    }
    finally {}
  }
  
  public TalkContract.AccountSettings.QueryMap getSettingsMap(long paramLong)
  {
    try
    {
      TalkContract.AccountSettings.QueryMap localQueryMap2 = (TalkContract.AccountSettings.QueryMap)mSettingsQueryMap.get(Long.valueOf(paramLong));
      TalkContract.AccountSettings.QueryMap localQueryMap1 = localQueryMap2;
      if (localQueryMap2 == null)
      {
        localQueryMap1 = new TalkContract.AccountSettings.QueryMap(mContext.getContentResolver(), true, paramLong, mHandler);
        mSettingsQueryMap.put(Long.valueOf(paramLong), localQueryMap1);
      }
      return localQueryMap1;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SettingsCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */