package com.google.android.talk;

import android.graphics.drawable.BitmapDrawable;

class PictureCache$PictureData
{
  private String mDescription;
  private BitmapDrawable mDrawable;
  private String mHash;
  private boolean mIsSource;
  private String mTitle;
  private int mType;
  
  PictureCache$PictureData(String paramString)
  {
    mHash = paramString;
  }
  
  String getDescription()
  {
    try
    {
      String str = mDescription;
      return str;
    }
    finally {}
  }
  
  BitmapDrawable getDrawable()
  {
    try
    {
      BitmapDrawable localBitmapDrawable = mDrawable;
      return localBitmapDrawable;
    }
    finally {}
  }
  
  String getHash()
  {
    try
    {
      String str = mHash;
      return str;
    }
    finally {}
  }
  
  String getTitle()
  {
    try
    {
      String str = mTitle;
      return str;
    }
    finally {}
  }
  
  int getType()
  {
    try
    {
      int i = mType;
      return i;
    }
    finally {}
  }
  
  boolean isSourceBitmap()
  {
    try
    {
      boolean bool = mIsSource;
      return bool;
    }
    finally {}
  }
  
  void setDrawable(BitmapDrawable paramBitmapDrawable)
  {
    try
    {
      mDrawable = paramBitmapDrawable;
      return;
    }
    finally {}
  }
  
  void setIsSourceBitmap(boolean paramBoolean)
  {
    try
    {
      mIsSource = paramBoolean;
      return;
    }
    finally {}
  }
  
  void setTitle(String paramString)
  {
    try
    {
      mTitle = paramString;
      return;
    }
    finally {}
  }
  
  void setType(int paramInt)
  {
    try
    {
      mType = paramInt;
      return;
    }
    finally {}
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[PictureData: ");
    localStringBuilder.append("drawable=").append(mDrawable).append(',');
    localStringBuilder.append("hash=").append(mHash).append(',');
    localStringBuilder.append("desc=").append(mDescription).append(',');
    localStringBuilder.append("title=").append(mTitle).append(',');
    localStringBuilder.append("type=").append(mType).append(',');
    localStringBuilder.append("isSource=").append(mIsSource).append(']');
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.PictureCache.PictureData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */