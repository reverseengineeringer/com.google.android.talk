package com.google.android.talk;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gsf.TalkContract.Avatars;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class AvatarCache
{
  private static volatile boolean sDone = false;
  private static Map<Long, AvatarCache> sInstances;
  private static final Object sInstancesLock = new Object();
  private static Thread sQueryThread;
  private static final ArrayList<WorkItem> sQueue = new ArrayList();
  private long mAccountId;
  private Uri mAvatarUri;
  private final BitmapCache mCache = new BitmapCache();
  private ArrayList<String> mNoAvatarList = new ArrayList();
  
  private AvatarCache(long paramLong)
  {
    mAvatarUri = computeAvatarUri(TalkContract.Avatars.CONTENT_URI_AVATARS_BY, paramLong);
    mAccountId = paramLong;
  }
  
  private Uri computeAvatarUri(Uri paramUri, long paramLong)
  {
    return Uri.parse(paramUri.toString() + '/' + paramLong);
  }
  
  public static void destroyAll(Context arg0)
  {
    synchronized (sInstancesLock)
    {
      Iterator localIterator = sInstances.entrySet().iterator();
      if (localIterator.hasNext()) {
        ((AvatarCache)((Map.Entry)localIterator.next()).getValue()).destroy();
      }
    }
    sInstances = null;
    sDone = true;
  }
  
  private BitmapDrawable findAvatarInCache(String paramString1, String paramString2)
  {
    Object localObject2 = null;
    synchronized (mCache)
    {
      AvatarCache.BitmapCache.CacheItem localCacheItem = mCache.get(paramString1);
      Object localObject1 = localObject2;
      if (localCacheItem != null)
      {
        if ((paramString2 != null) && (paramString2.equals(localCacheItem.getHash()))) {
          localObject1 = localCacheItem.getDrawable();
        }
      }
      else {
        return (BitmapDrawable)localObject1;
      }
      mCache.clear(paramString1);
      localObject1 = localObject2;
    }
  }
  
  public static AvatarCache getInstance(long paramLong, boolean paramBoolean)
  {
    if (paramLong <= 0L)
    {
      loge("getInstance: invalid account " + paramLong);
      return null;
    }
    synchronized (sInstancesLock)
    {
      if (sInstances == null) {
        throw new RuntimeException("AvatarCache hasn't been initialized");
      }
    }
    AvatarCache localAvatarCache = (AvatarCache)sInstances.get(Long.valueOf(paramLong));
    Object localObject2 = localAvatarCache;
    if (localAvatarCache == null)
    {
      localObject2 = localAvatarCache;
      if (paramBoolean)
      {
        localObject2 = new AvatarCache(paramLong);
        sInstances.put(Long.valueOf(paramLong), localObject2);
      }
    }
    return (AvatarCache)localObject2;
  }
  
  public static void initialize(TalkApp arg0)
  {
    synchronized (sInstancesLock)
    {
      if (sInstances != null) {
        return;
      }
      sInstances = new HashMap();
      startQueryThread();
      return;
    }
  }
  
  private static void loge(String paramString)
  {
    Log.e("talk", "[AvatarCache] " + paramString);
  }
  
  private static void startQueryThread()
  {
    sQueryThread = new Thread(new Runnable()
    {
      public void run()
      {
        Process.setThreadPriority(10);
        while (!AvatarCache.sDone)
        {
          Object localObject1 = null;
          synchronized (AvatarCache.sQueue)
          {
            if (AvatarCache.sQueue.size() > 0)
            {
              localObject1 = (AvatarCache.WorkItem)AvatarCache.sQueue.get(0);
              label39:
              if (localObject1 == null) {
                continue;
              }
              ??? = DatabaseUtils.decodeAvatar(mAvatarData);
              if (??? != null)
              {
                ??? = new BitmapDrawable((Bitmap)???);
                mCache.add(mUsername, (BitmapDrawable)???, mAvatarHash, true);
              }
            }
          }
          synchronized (AvatarCache.sQueue)
          {
            AvatarCache.sQueue.remove(localObject1);
            localObject1 = mAvatarLoadedMessage;
            if (localObject1 != null)
            {
              ((HashMap)obj).put("bitmap", ???);
              ((Message)localObject1).sendToTarget();
              continue;
              try
              {
                AvatarCache.sQueue.wait();
              }
              catch (InterruptedException localInterruptedException) {}
              break label39;
              localObject2 = finally;
              throw ((Throwable)localObject2);
            }
          }
        }
      }
    });
    sQueryThread.start();
  }
  
  public void clear(String paramString)
  {
    synchronized (mCache)
    {
      mCache.clear(paramString);
      mNoAvatarList.remove(paramString);
      return;
    }
  }
  
  public void destroy()
  {
    mCache.clearAll();
  }
  
  public Drawable getAvatar(Cursor paramCursor, int paramInt1, int paramInt2, String paramString, Drawable paramDrawable)
  {
    String str = paramCursor.getString(paramInt1);
    BitmapDrawable localBitmapDrawable = findAvatarInCache(paramString, str);
    if (localBitmapDrawable != null) {
      return localBitmapDrawable;
    }
    if ((!TextUtils.isEmpty(str)) && (paramInt2 >= 0))
    {
      paramCursor = DatabaseUtils.getAvatarFromCursor(paramCursor, paramInt2);
      if (paramCursor != null)
      {
        paramCursor = new BitmapDrawable(paramCursor);
        mCache.add(paramString, paramCursor, str, true);
        return paramCursor;
      }
    }
    return paramDrawable;
  }
  
  public Drawable getAvatarIfInCache(Cursor arg1, int paramInt1, int paramInt2, String paramString, Message paramMessage, Drawable paramDrawable)
  {
    String str = ???.getString(paramInt1);
    BitmapDrawable localBitmapDrawable = findAvatarInCache(paramString, str);
    if (localBitmapDrawable != null) {
      return localBitmapDrawable;
    }
    if ((!TextUtils.isEmpty(str)) && (paramInt2 >= 0))
    {
      paramString = new WorkItem(paramString, ???.getBlob(paramInt2), str, mAccountId, mCache, paramMessage);
      synchronized (sQueue)
      {
        if (!sQueue.contains(paramString))
        {
          sQueue.add(0, paramString);
          sQueue.notify();
        }
      }
    }
    return paramDrawable;
  }
  
  public Uri getAvatarUri()
  {
    return mAvatarUri;
  }
  
  class BitmapCache
  {
    private final LinkedList<String> mLRU = new LinkedList();
    private HashMap<String, SoftReference<CacheItem>> mSoftCache = new HashMap();
    private HashMap<String, CacheItem> mStrongCache = new HashMap();
    private long mStrongCacheSize = 0L;
    
    BitmapCache() {}
    
    void add(String paramString1, BitmapDrawable paramBitmapDrawable, String paramString2, boolean paramBoolean)
    {
      synchronized (mLRU)
      {
        int i = mLRU.indexOf(paramString1);
        if (i == 0) {
          return;
        }
        if (i != -1) {
          mLRU.remove(i);
        }
        mLRU.addFirst(paramString1);
        if (i == -1)
        {
          paramString2 = new CacheItem(paramString2, paramBitmapDrawable, paramBoolean);
          long l = bitmapSize(paramBitmapDrawable);
          mStrongCache.put(paramString1, paramString2);
          mStrongCacheSize += l;
          pruneIfCacheExceededMax();
        }
        return;
      }
    }
    
    long bitmapSize(BitmapDrawable paramBitmapDrawable)
    {
      paramBitmapDrawable = paramBitmapDrawable.getBitmap();
      return paramBitmapDrawable.getRowBytes() * paramBitmapDrawable.getHeight();
    }
    
    void clear(String paramString)
    {
      synchronized (mLRU)
      {
        if (mLRU.indexOf(paramString) != -1)
        {
          CacheItem localCacheItem = (CacheItem)mStrongCache.remove(paramString);
          if (localCacheItem != null) {
            mStrongCacheSize -= bitmapSize(localCacheItem.getDrawable());
          }
          mLRU.remove(paramString);
        }
        return;
      }
    }
    
    void clearAll()
    {
      synchronized (mLRU)
      {
        mStrongCache.clear();
        mLRU.clear();
        mStrongCacheSize = 0L;
        return;
      }
    }
    
    CacheItem get(String paramString)
    {
      synchronized (mLRU)
      {
        CacheItem localCacheItem = (CacheItem)mStrongCache.get(paramString);
        if (localCacheItem != null) {
          add(paramString, localCacheItem.getDrawable(), localCacheItem.getHash(), localCacheItem.isSourceBitmap());
        }
        return localCacheItem;
      }
    }
    
    void pruneIfCacheExceededMax()
    {
      synchronized (mLRU)
      {
        if (strongSize() > 614400L)
        {
          String str = (String)mLRU.removeLast();
          long l = bitmapSize(((CacheItem)mStrongCache.remove(str)).getDrawable());
          mStrongCacheSize -= l;
        }
      }
    }
    
    long strongSize()
    {
      return mStrongCacheSize;
    }
    
    class CacheItem
    {
      private BitmapDrawable drawable;
      private String hash;
      private boolean isSource;
      
      CacheItem(String paramString, BitmapDrawable paramBitmapDrawable, boolean paramBoolean)
      {
        hash = paramString;
        drawable = paramBitmapDrawable;
        isSource = paramBoolean;
      }
      
      BitmapDrawable getDrawable()
      {
        try
        {
          BitmapDrawable localBitmapDrawable = drawable;
          return localBitmapDrawable;
        }
        finally {}
      }
      
      String getHash()
      {
        try
        {
          String str = hash;
          return str;
        }
        finally {}
      }
      
      boolean isSourceBitmap()
      {
        try
        {
          boolean bool = isSource;
          return bool;
        }
        finally {}
      }
    }
  }
  
  class WorkItem
  {
    long mAccountId;
    byte[] mAvatarData;
    String mAvatarHash;
    Message mAvatarLoadedMessage;
    AvatarCache.BitmapCache mCache;
    String mUsername;
    
    WorkItem(String paramString1, byte[] paramArrayOfByte, String paramString2, long paramLong, AvatarCache.BitmapCache paramBitmapCache, Message paramMessage)
    {
      mAvatarData = paramArrayOfByte;
      mAvatarHash = paramString2;
      mUsername = paramString1;
      mAccountId = paramLong;
      mCache = paramBitmapCache;
      if ((paramMessage != null) && (obj == null)) {
        obj = new HashMap();
      }
      mAvatarLoadedMessage = paramMessage;
    }
    
    public boolean equals(Object paramObject)
    {
      paramObject = (WorkItem)paramObject;
      return (mUsername.equals(mUsername)) && (mAccountId == mAccountId);
    }
    
    public int hashCode()
    {
      return mUsername.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AvatarCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */