package org.webrtc.voiceengine;

import android.os.Build;
import android.os.Build.VERSION;

public final class BuildInfo
{
  public static String getAndroidBuildId()
  {
    return Build.ID;
  }
  
  public static String getBrand()
  {
    return Build.BRAND;
  }
  
  public static String getBuildRelease()
  {
    return Build.VERSION.RELEASE;
  }
  
  public static String getBuildType()
  {
    return Build.TYPE;
  }
  
  public static String getDevice()
  {
    return Build.DEVICE;
  }
  
  public static String getDeviceManufacturer()
  {
    return Build.MANUFACTURER;
  }
  
  public static String getDeviceModel()
  {
    return Build.MODEL;
  }
  
  public static String getProduct()
  {
    return Build.PRODUCT;
  }
  
  public static String getSdkVersion()
  {
    return Integer.toString(Build.VERSION.SDK_INT);
  }
}

/* Location:
 * Qualified Name:     org.webrtc.voiceengine.BuildInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */