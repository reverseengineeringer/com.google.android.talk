package com.google.android.talk;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;

class RosterListItem$2
  implements Animator.AnimatorListener
{
  boolean mCanceled;
  
  RosterListItem$2(RosterListItem paramRosterListItem, AnimatorSet paramAnimatorSet) {}
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    mCanceled = true;
    this$0.setVideoPresenceAlpha(1.0F);
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (!mCanceled)
    {
      val$a.start();
      return;
    }
    this$0.setVideoPresenceAlpha(1.0F);
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator)
  {
    mCanceled = false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListItem.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */