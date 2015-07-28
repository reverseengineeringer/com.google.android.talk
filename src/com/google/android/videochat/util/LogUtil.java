package com.google.android.videochat.util;

import android.util.Log;

public class LogUtil
{
  private static int mLogLevel = ;
  
  public static void LOG(int paramInt, String paramString1, String paramString2)
  {
    if (paramInt >= mLogLevel) {
      Log.println(paramInt, paramString1, paramString2);
    }
  }
  
  public static void LOGD(String paramString1, String paramString2)
  {
    LOG(3, paramString1, paramString2);
  }
  
  public static void LOGE(String paramString1, String paramString2)
  {
    Log.e(paramString1, paramString2);
  }
  
  public static void LOGI(String paramString1, String paramString2)
  {
    Log.i(paramString1, paramString2);
  }
  
  public static void LOGV(String paramString1, String paramString2)
  {
    LOG(2, paramString1, paramString2);
  }
  
  public static void LOGW(String paramString1, String paramString2)
  {
    Log.w(paramString1, paramString2);
  }
  
  public static void Logwtf(String paramString1, String paramString2)
  {
    Log.e(paramString1, paramString2);
    Log.wtf(paramString1, paramString2);
  }
  
  public static boolean debugLoggable()
  {
    return 3 >= mLogLevel;
  }
  
  public static int getLogLevelForTag(String paramString)
  {
    if (Log.isLoggable(paramString, 2)) {
      return 2;
    }
    if (Log.isLoggable(paramString, 3)) {
      return 3;
    }
    if (Log.isLoggable(paramString, 4)) {
      return 4;
    }
    if (Log.isLoggable(paramString, 5)) {
      return 5;
    }
    return 6;
  }
  
  private static int getLogLevelForVcLib()
  {
    return getLogLevelForTag("vclib");
  }
  
  public static int getTalkLogLevel()
  {
    return mLogLevel;
  }
  
  public static int refreshTalkLogLevel()
  {
    mLogLevel = getLogLevelForVcLib();
    return mLogLevel;
  }
  
  public static boolean verboseLoggable()
  {
    return 2 >= mLogLevel;
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.util.LogUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */