package com.google.android.videochat;

import com.google.android.videochat.util.LogUtil;

public class VideoSpecification
{
  private static boolean sAllSpecificationsSet;
  private static VideoSpecification sIncomingVideo;
  private static final Object sLock = new Object();
  private static VideoSpecification sOutgoingVideoNoEffects;
  private static VideoSpecification sOutgoingVideoWithEffects;
  private final int mFrameRate;
  private final Size mSize;
  
  public VideoSpecification(Size paramSize, int paramInt)
  {
    mSize = paramSize;
    mFrameRate = paramInt;
  }
  
  private static void checkIfAllSpecified()
  {
    if ((sIncomingVideo != null) && (sOutgoingVideoNoEffects != null) && (sOutgoingVideoWithEffects != null))
    {
      sAllSpecificationsSet = true;
      sLock.notifyAll();
    }
  }
  
  public static VideoSpecification getFromString(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    String[] arrayOfString = paramString.split("x");
    if (arrayOfString.length != 3)
    {
      LogUtil.LOGE("vclib", "VideoSpecification can't parse " + paramString);
      return null;
    }
    try
    {
      int i = Integer.parseInt(arrayOfString[0]);
      int j = Integer.parseInt(arrayOfString[1]);
      int k = Integer.parseInt(arrayOfString[2]);
      return new VideoSpecification(new Size(i, j), k);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      LogUtil.LOGE("vclib", "VideoSpecification can't parse " + paramString);
    }
    return null;
  }
  
  public static VideoSpecification getIncomingVideoSpec()
  {
    waitForVideoSpecs();
    return sIncomingVideo;
  }
  
  public static VideoSpecification getOutgoingVideoNoEffectsSpec()
  {
    waitForVideoSpecs();
    return sOutgoingVideoNoEffects;
  }
  
  public static VideoSpecification getOutgoingVideoWithEffectsSpec()
  {
    waitForVideoSpecs();
    return sOutgoingVideoWithEffects;
  }
  
  public static void setMaxIncoming(VideoSpecification paramVideoSpecification)
  {
    synchronized (sLock)
    {
      sIncomingVideo = paramVideoSpecification;
      checkIfAllSpecified();
      return;
    }
  }
  
  public static void setMaxOutgoingNoEffects(VideoSpecification paramVideoSpecification)
  {
    synchronized (sLock)
    {
      sOutgoingVideoNoEffects = paramVideoSpecification;
      checkIfAllSpecified();
      return;
    }
  }
  
  public static void setMaxOutgoingWithEffects(VideoSpecification paramVideoSpecification)
  {
    synchronized (sLock)
    {
      sOutgoingVideoWithEffects = paramVideoSpecification;
      checkIfAllSpecified();
      return;
    }
  }
  
  private static void waitForVideoSpecs()
  {
    synchronized (sLock)
    {
      if (sAllSpecificationsSet) {
        return;
      }
    }
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    paramObject = (VideoSpecification)paramObject;
    boolean bool1 = bool2;
    if (paramObject != null)
    {
      bool1 = bool2;
      if (mSize == mSize)
      {
        bool1 = bool2;
        if (mFrameRate == mFrameRate) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int getFrameRate()
  {
    return mFrameRate;
  }
  
  public Size getSize()
  {
    return mSize;
  }
  
  public int hashCode()
  {
    return mSize.hashCode() * 277 + mFrameRate;
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.VideoSpecification
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */