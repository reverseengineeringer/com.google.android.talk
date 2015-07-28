package com.google.android.talk;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.LinkedList;

class AvatarCache$BitmapCache
{
  private final LinkedList<String> mLRU = new LinkedList();
  private HashMap<String, SoftReference<CacheItem>> mSoftCache = new HashMap();
  private HashMap<String, CacheItem> mStrongCache = new HashMap();
  private long mStrongCacheSize = 0L;
  
  AvatarCache$BitmapCache(AvatarCache paramAvatarCache) {}
  
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

/* Location:
 * Qualified Name:     com.google.android.talk.AvatarCache.BitmapCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */