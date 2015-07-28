package com.google.android.talk;

import android.graphics.drawable.BitmapDrawable;

class AvatarCache$BitmapCache$CacheItem
{
  private BitmapDrawable drawable;
  private String hash;
  private boolean isSource;
  
  AvatarCache$BitmapCache$CacheItem(AvatarCache.BitmapCache paramBitmapCache, String paramString, BitmapDrawable paramBitmapDrawable, boolean paramBoolean)
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

/* Location:
 * Qualified Name:     com.google.android.talk.AvatarCache.BitmapCache.CacheItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */