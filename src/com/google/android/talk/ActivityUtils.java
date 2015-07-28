package com.google.android.talk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;

public class ActivityUtils
{
  static int sSmallestWidth;
  static boolean sTabletMode;
  static boolean sTabletModeDetermined;
  
  public static void dismissPopupNotification(Activity paramActivity)
  {
    paramActivity.sendBroadcast(new Intent("com.google.android.talk.CANCEL_POPUP_NOTIFICATION"));
  }
  
  public static boolean isAudioChatCapable(int paramInt)
  {
    return (FeatureManager.audioChatEnabled()) && ((paramInt & 0x1) != 0);
  }
  
  public static boolean isTablet(Context paramContext)
  {
    if (!sTabletModeDetermined)
    {
      sSmallestWidth = getResourcesgetConfigurationsmallestScreenWidthDp;
      if (sSmallestWidth >= 720) {
        sTabletMode = true;
      }
      sTabletModeDetermined = true;
    }
    return sTabletMode;
  }
  
  public static boolean isVideoChatCapable(int paramInt)
  {
    return (FeatureManager.videoChatEnabled()) && ((paramInt & 0x4) != 0) && ((paramInt & 0x2) != 0);
  }
  
  public static boolean isXLargeTabletWidth(Context paramContext)
  {
    return getResourcesgetConfigurationscreenWidthDp >= 1200;
  }
  
  public static void showLandingPage(Activity paramActivity)
  {
    paramActivity.finish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ActivityUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */