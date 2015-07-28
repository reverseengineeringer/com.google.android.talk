package com.google.android.talk;

import android.os.Message;
import java.util.HashMap;

class PictureCache$WorkItem
{
  PictureCache.BitmapCache mCache;
  int mDesiredBitmapHeight;
  int mDesiredBitmapWidth;
  Message mPictureLoadedMessage;
  String mUrl;
  
  PictureCache$WorkItem(PictureCache paramPictureCache, String paramString, PictureCache.BitmapCache paramBitmapCache, int paramInt1, int paramInt2, Message paramMessage)
  {
    mUrl = paramString;
    mCache = paramBitmapCache;
    mDesiredBitmapWidth = paramInt1;
    mDesiredBitmapHeight = paramInt2;
    if ((paramMessage != null) && (obj == null)) {
      obj = new HashMap();
    }
    mPictureLoadedMessage = paramMessage;
  }
  
  public boolean equals(Object paramObject)
  {
    return mUrl.equals(mUrl);
  }
  
  public int hashCode()
  {
    return mUrl.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.PictureCache.WorkItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */