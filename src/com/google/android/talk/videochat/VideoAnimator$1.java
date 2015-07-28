package com.google.android.talk.videochat;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;

class VideoAnimator$1
  implements Animator.AnimatorListener
{
  VideoAnimator$1(VideoAnimator paramVideoAnimator) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    VideoAnimator.access$102(this$0, true);
    if (VideoAnimator.access$200(this$0))
    {
      VideoAnimator.access$300(this$0).start();
      VideoAnimator.access$102(this$0, false);
    }
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoAnimator.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */