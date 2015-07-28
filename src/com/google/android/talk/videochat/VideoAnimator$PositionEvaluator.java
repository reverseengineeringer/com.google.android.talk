package com.google.android.talk.videochat;

import android.animation.TypeEvaluator;

class VideoAnimator$PositionEvaluator
  implements TypeEvaluator
{
  private VideoAnimator$PositionEvaluator(VideoAnimator paramVideoAnimator) {}
  
  public Object evaluate(float paramFloat, Object paramObject1, Object paramObject2)
  {
    if (((paramObject1 instanceof VideoAnimator.Position)) && ((paramObject2 instanceof VideoAnimator.Position)))
    {
      paramObject1 = (VideoAnimator.Position)paramObject1;
      paramObject2 = (VideoAnimator.Position)paramObject2;
      return new VideoAnimator.Position(Math.round(x + (x - x) * paramFloat), Math.round(y + (y - y) * paramFloat));
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoAnimator.PositionEvaluator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */