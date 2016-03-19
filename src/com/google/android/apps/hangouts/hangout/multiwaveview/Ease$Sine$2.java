package com.google.android.apps.hangouts.hangout.multiwaveview;

import android.animation.TimeInterpolator;

final class Ease$Sine$2
  implements TimeInterpolator
{
  public float getInterpolation(float paramFloat)
  {
    return 1.0F * (float)Math.sin(paramFloat * 1.5707963267948966D) + 0.0F;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.multiwaveview.Ease.Sine.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */