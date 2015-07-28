package com.google.android.talk.videochat;

import android.animation.TypeEvaluator;

class VideoAnimator$RgbEvaluator
  implements TypeEvaluator
{
  private VideoAnimator$RgbEvaluator(VideoAnimator paramVideoAnimator) {}
  
  public Object evaluate(float paramFloat, Object paramObject1, Object paramObject2)
  {
    if (((paramObject1 instanceof Integer)) && ((paramObject2 instanceof Integer)))
    {
      float[] arrayOfFloat1 = new float[3];
      float[] arrayOfFloat2 = new float[3];
      int i = ((Integer)paramObject1).intValue();
      int j = ((Integer)paramObject2).intValue();
      arrayOfFloat1[0] = (i >> 16 & 0xFF);
      arrayOfFloat1[1] = (i >> 8 & 0xFF);
      arrayOfFloat1[2] = (i & 0xFF);
      arrayOfFloat2[0] = (j >> 16 & 0xFF);
      arrayOfFloat2[1] = (j >> 8 & 0xFF);
      arrayOfFloat2[2] = (j & 0xFF);
      return Integer.valueOf(Math.round(arrayOfFloat1[0] + (arrayOfFloat2[0] - arrayOfFloat1[0]) * paramFloat) << 16 | Math.round(arrayOfFloat1[1] + (arrayOfFloat2[1] - arrayOfFloat1[1]) * paramFloat) << 8 | Math.round(arrayOfFloat1[2] + (arrayOfFloat2[2] - arrayOfFloat1[2]) * paramFloat));
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoAnimator.RgbEvaluator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */