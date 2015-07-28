package com.google.android.talk.videochat;

import com.google.android.talk.FeatureManager;

public class EffectsController
{
  private final GlView mGlView;
  
  EffectsController(GlView paramGlView)
  {
    mGlView = paramGlView;
  }
  
  public static boolean anyAvailableEffectsCanClip()
  {
    return (isEffectAvailable(2)) || (isEffectAvailable(1));
  }
  
  public static boolean effectCanClip(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return false;
    }
    return true;
  }
  
  public static int generateCapabilitiesMask()
  {
    int j = 0;
    int i = 0;
    if (i < 4)
    {
      if (FilterFrameworkEffects.isEffectAvailable(i + 1)) {}
      for (int k = 1 << i;; k = 0)
      {
        j |= k;
        i += 1;
        break;
      }
    }
    return j | 0x1;
  }
  
  public static boolean isEffectAvailable(int paramInt)
  {
    return FeatureManager.isEffectAvailable(paramInt);
  }
  
  void enableEffect(int paramInt, Object paramObject)
  {
    mGlView.setActiveEffect(paramInt, paramObject);
  }
  
  int getActiveEffect()
  {
    return mGlView.getActiveEffect();
  }
  
  boolean maxImageStabilizationEnabled()
  {
    return (mGlView.getActiveEffect() == 1) && (((Integer)mGlView.getActiveEffectParam()).intValue() == 3);
  }
  
  static abstract interface StateCallback
  {
    public abstract void onBackgroundReplacementTraningSuccess();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.EffectsController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */