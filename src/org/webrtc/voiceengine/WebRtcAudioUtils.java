package org.webrtc.voiceengine;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Process;
import java.util.Arrays;
import java.util.List;

public final class WebRtcAudioUtils
{
  private static final String[] BLACKLISTED_AEC_MODELS = { "Nexus 5", "D6503" };
  private static final int SAMPLE_RATE_HZ = 16000;
  private static int defaultSampleRateHz = 16000;
  
  public static boolean deviceIsBlacklistedForHwAecUsage()
  {
    return Arrays.asList(BLACKLISTED_AEC_MODELS).contains(Build.MODEL);
  }
  
  public static int getDefaultSampleRateHz()
  {
    return defaultSampleRateHz;
  }
  
  public static String getThreadInfo()
  {
    String str = String.valueOf(Thread.currentThread().getName());
    long l = Thread.currentThread().getId();
    return String.valueOf(str).length() + 33 + "@[name=" + str + ", id=" + l + "]";
  }
  
  public static boolean hasPermission(Context paramContext, String paramString)
  {
    return paramContext.checkPermission(paramString, Process.myPid(), Process.myUid()) == 0;
  }
  
  public static boolean isAcousticEchoCancelerApproved()
  {
    return isAcousticEchoCancelerSupported();
  }
  
  public static boolean isAcousticEchoCancelerSupported()
  {
    return AudioEffectsJB.shouldUsePlatformAcousticEchoCanceler();
  }
  
  public static void logDeviceInfo(String paramString)
  {
    int i = Build.VERSION.SDK_INT;
    paramString = String.valueOf(Build.VERSION.RELEASE);
    String str1 = String.valueOf(Build.BRAND);
    String str2 = String.valueOf(Build.DEVICE);
    String str3 = String.valueOf(Build.ID);
    String str4 = String.valueOf(Build.HARDWARE);
    String str5 = String.valueOf(Build.MANUFACTURER);
    String str6 = String.valueOf(Build.MODEL);
    String str7 = String.valueOf(Build.PRODUCT);
    new StringBuilder(String.valueOf(paramString).length() + 108 + String.valueOf(str1).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length()).append("Android SDK: ").append(i).append(", Release: ").append(paramString).append(", Brand: ").append(str1).append(", Device: ").append(str2).append(", Id: ").append(str3).append(", Hardware: ").append(str4).append(", Manufacturer: ").append(str5).append(", Model: ").append(str6).append(", Product: ").append(str7);
  }
  
  public static boolean runningOnEmulator()
  {
    return (Build.HARDWARE.equals("goldfish")) && (Build.BRAND.startsWith("generic_"));
  }
  
  public static boolean runningOnGingerBreadOrHigher()
  {
    return Build.VERSION.SDK_INT >= 9;
  }
  
  public static boolean runningOnJellyBeanMR1OrHigher()
  {
    return Build.VERSION.SDK_INT >= 17;
  }
  
  public static boolean runningOnJellyBeanOrHigher()
  {
    return Build.VERSION.SDK_INT >= 16;
  }
  
  public static boolean runningOnLollipopOrHigher()
  {
    return Build.VERSION.SDK_INT >= 21;
  }
  
  public static void setDefaultSampleRateHz(int paramInt)
  {
    defaultSampleRateHz = paramInt;
  }
}

/* Location:
 * Qualified Name:     org.webrtc.voiceengine.WebRtcAudioUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */