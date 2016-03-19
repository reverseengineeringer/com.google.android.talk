package com.google.android.apps.hangouts.hangout.multiwaveview;

import android.animation.TimeInterpolator;

final class Ease$Sine$3
  implements TimeInterpolator
{
  public float getInterpolation(float paramFloat)
  {
    return -0.5F * ((float)Math.cos(3.141592653589793D * paramFloat) - 1.0F) + 0.0F;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.multiwaveview.Ease.Sine.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */