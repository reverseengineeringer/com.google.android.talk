package com.google.android.talk.videochat;

import android.animation.TypeEvaluator;

class VideoAnimator$RectSizeEvaluator
  implements TypeEvaluator
{
  private VideoAnimator$RectSizeEvaluator(VideoAnimator paramVideoAnimator) {}
  
  public Object evaluate(float paramFloat, Object paramObject1, Object paramObject2)
  {
    if (((paramObject1 instanceof VideoAnimator.RectSize)) && ((paramObject2 instanceof VideoAnimator.RectSize)))
    {
      paramObject1 = (VideoAnimator.RectSize)paramObject1;
      paramObject2 = (VideoAnimator.RectSize)paramObject2;
      return new VideoAnimator.RectSize(Math.round(w + (w - w) * paramFloat), Math.round(h + (h - h) * paramFloat));
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoAnimator.RectSizeEvaluator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */