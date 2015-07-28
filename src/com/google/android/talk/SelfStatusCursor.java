package com.google.android.talk;

import android.app.Activity;
import android.database.AbstractCursor;
import com.google.android.gsf.TalkContract.AccountSettings.QueryMap;
import com.google.android.gtalkservice.Presence;
import com.google.android.talk.util.PresenceUtils;

public class SelfStatusCursor
  extends AbstractCursor
{
  static final String[] PROJECTION = { "_id", "username", "nickname", "account", "type", "subscriptionStatus", "subscriptionType", "qc", "mode", "status", "client_type", "groupchat", "last_unread_message", "last_message_date", "avatars_hash", "avatars_data", "cap" };
  private TalkApp.AccountInfo mAccountInfo;
  private Activity mActivity;
  private DatabaseUtils.AvatarData mAvatarData;
  private int mCapabilities;
  private final Object mCapabilitiesLock = new Object();
  private boolean mCapabilitiesValid;
  private Presence mPresence;
  
  public SelfStatusCursor(Activity paramActivity, Presence paramPresence, final TalkApp.AccountInfo paramAccountInfo)
  {
    mActivity = paramActivity;
    mAccountInfo = paramAccountInfo;
    mPresence = paramPresence;
    paramActivity = new Thread(new Runnable()
    {
      public void run()
      {
        ??? = SettingsCache.getInstance().getSettingsMap(paramAccountInfoaccountId);
        SelfStatusCursor.access$202(SelfStatusCursor.this, ((TalkContract.AccountSettings.QueryMap)???).getCapabilities());
        synchronized (mCapabilitiesLock)
        {
          mCapabilitiesLock.notifyAll();
          SelfStatusCursor.access$402(SelfStatusCursor.this, true);
          return;
        }
      }
    });
    paramActivity.setName("Async SelfStatusCursor query capabilities");
    paramActivity.start();
  }
  
  private int getCapabilities()
  {
    if (!mCapabilitiesValid) {
      synchronized (mCapabilitiesLock)
      {
        boolean bool = mCapabilitiesValid;
        if (bool) {}
      }
    }
    try
    {
      mCapabilitiesLock.wait();
      return mCapabilities;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  public byte[] getBlob(int paramInt)
  {
    if ((paramInt == 15) && (mAvatarData != null)) {
      return mAvatarData.mAvatarData;
    }
    return null;
  }
  
  public int getColumnIndexOrThrow(String paramString)
  {
    int i = 0;
    while (i < PROJECTION.length)
    {
      if (PROJECTION[i].equals(paramString)) {
        return i;
      }
      i += 1;
    }
    throw new IllegalArgumentException("column '" + paramString + "' does not exist");
  }
  
  public String[] getColumnNames()
  {
    return PROJECTION;
  }
  
  public int getCount()
  {
    return 1;
  }
  
  public double getDouble(int paramInt)
  {
    return 0.0D;
  }
  
  public float getFloat(int paramInt)
  {
    return 0.0F;
  }
  
  public int getInt(int paramInt)
  {
    return (int)getLong(paramInt);
  }
  
  public long getLong(int paramInt)
  {
    long l2 = 0L;
    long l1;
    if (paramInt == 8)
    {
      Presence localPresence = mPresence;
      l1 = l2;
      if (localPresence != null) {
        l1 = PresenceUtils.translatePresence(localPresence);
      }
    }
    do
    {
      do
      {
        return l1;
        l1 = l2;
      } while (paramInt == 6);
      l1 = l2;
    } while (paramInt != 16);
    return getCapabilities();
  }
  
  public short getShort(int paramInt)
  {
    return (short)(int)getLong(paramInt);
  }
  
  public String getString(int paramInt)
  {
    Object localObject2 = null;
    Object localObject1;
    if (paramInt == 9)
    {
      Presence localPresence = mPresence;
      localObject1 = localObject2;
      if (localPresence != null) {
        localObject1 = localPresence.getStatus();
      }
    }
    do
    {
      do
      {
        return (String)localObject1;
        if (paramInt == 2) {
          return mAccountInfo.username;
        }
        if (paramInt == 1) {
          return mAccountInfo.username;
        }
        localObject1 = localObject2;
      } while (paramInt != 14);
      localObject1 = localObject2;
    } while (mAvatarData == null);
    return mAvatarData.mAvatarDataHash;
  }
  
  public boolean isNull(int paramInt)
  {
    return paramInt == 13;
  }
  
  public void setOnAvatarRunnable(final Runnable paramRunnable)
  {
    if ((mActivity != null) && (mAccountInfo != null))
    {
      paramRunnable = new TalkApp.SelfAvatarReadyRunnable()
      {
        public void run(DatabaseUtils.AvatarData paramAnonymousAvatarData)
        {
          SelfStatusCursor.access$002(SelfStatusCursor.this, paramAnonymousAvatarData);
          mActivity.runOnUiThread(paramRunnable);
        }
      };
      TalkApp.getApplication(mActivity).getSelfAvatarDataForAccount(mAccountInfo, paramRunnable);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SelfStatusCursor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */