package com.google.android.apps.hangouts.hangout.multiwaveview;

import android.animation.TimeInterpolator;

final class Ease$Quad$2
  implements TimeInterpolator
{
  public float getInterpolation(float paramFloat)
  {
    return -1.0F * paramFloat * (paramFloat - 2.0F) + 0.0F;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.multiwaveview.Ease.Quad.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */