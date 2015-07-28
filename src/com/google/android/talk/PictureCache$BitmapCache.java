package com.google.android.talk;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

class PictureCache$BitmapCache
{
  private LinkedList<String> mLRU = new LinkedList();
  private HashMap<String, SoftReference<PictureCache.PictureData>> mSoftCache = new HashMap();
  private HashMap<String, PictureCache.PictureData> mStrongCache = new HashMap();
  private long mStrongCacheSize = 0L;
  
  PictureCache$BitmapCache(PictureCache paramPictureCache) {}
  
  private long internalComputeCacheSize()
  {
    long l = 0L;
    Iterator localIterator = mStrongCache.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      l += bitmapSize(((PictureCache.PictureData)mStrongCache.get(str)).getDrawable());
    }
    return l;
  }
  
  void add(PictureCache.PictureData paramPictureData)
  {
    synchronized (mLRU)
    {
      int i = mLRU.indexOf(paramPictureData.getHash());
      if (i == 0) {
        return;
      }
      if (i != -1) {
        mLRU.remove(i);
      }
      mLRU.addFirst(paramPictureData.getHash());
      if (i == -1)
      {
        long l = bitmapSize(paramPictureData.getDrawable());
        mStrongCache.put(paramPictureData.getHash(), paramPictureData);
        mStrongCacheSize += l;
        pruneIfCacheExceededMax();
      }
      return;
    }
  }
  
  long bitmapSize(BitmapDrawable paramBitmapDrawable)
  {
    if (paramBitmapDrawable == null) {
      return 0L;
    }
    paramBitmapDrawable = paramBitmapDrawable.getBitmap();
    return paramBitmapDrawable.getRowBytes() * paramBitmapDrawable.getHeight();
  }
  
  void clear(String paramString)
  {
    synchronized (mLRU)
    {
      if (mLRU.indexOf(paramString) != -1)
      {
        PictureCache.PictureData localPictureData = (PictureCache.PictureData)mStrongCache.remove(paramString);
        if (localPictureData != null) {
          mStrongCacheSize -= bitmapSize(localPictureData.getDrawable());
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
  
  PictureCache.PictureData get(String paramString)
  {
    synchronized (mLRU)
    {
      paramString = (PictureCache.PictureData)mStrongCache.get(paramString);
      if (paramString != null) {
        add(paramString);
      }
      return paramString;
    }
  }
  
  void pruneIfCacheExceededMax()
  {
    synchronized (mLRU)
    {
      if (strongSize() > 614400L)
      {
        String str = (String)mLRU.removeLast();
        long l = bitmapSize(((PictureCache.PictureData)mStrongCache.remove(str)).getDrawable());
        mStrongCacheSize -= l;
      }
    }
  }
  
  void recomputeCacheSize()
  {
    synchronized (mLRU)
    {
      mStrongCacheSize = internalComputeCacheSize();
      return;
    }
  }
  
  long strongSize()
  {
    return mStrongCacheSize;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.PictureCache.BitmapCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */