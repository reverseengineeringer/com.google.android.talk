package com.google.android.talk.videochat;

import android.animation.Animator;

class VideoAnimator$2
  implements Runnable
{
  VideoAnimator$2(VideoAnimator paramVideoAnimator, Animator[] paramArrayOfAnimator) {}
  
  public void run()
  {
    Animator[] arrayOfAnimator = val$animators;
    int j = arrayOfAnimator.length;
    int i = 0;
    while (i < j)
    {
      arrayOfAnimator[i].start();
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoAnimator.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */