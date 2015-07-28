package com.google.android.talk;

import android.os.Message;
import java.util.HashMap;

class AvatarCache$WorkItem
{
  long mAccountId;
  byte[] mAvatarData;
  String mAvatarHash;
  Message mAvatarLoadedMessage;
  AvatarCache.BitmapCache mCache;
  String mUsername;
  
  AvatarCache$WorkItem(AvatarCache paramAvatarCache, String paramString1, byte[] paramArrayOfByte, String paramString2, long paramLong, AvatarCache.BitmapCache paramBitmapCache, Message paramMessage)
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

/* Location:
 * Qualified Name:     com.google.android.talk.AvatarCache.WorkItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */