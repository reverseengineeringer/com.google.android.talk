package com.google.android.apps.hangouts.hangout.multiwaveview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class GlowPadView$5
  extends AnimatorListenerAdapter
{
  GlowPadView$5(GlowPadView paramGlowPadView) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    access$900this$0).waveManager.setRadius(0.0F);
    access$900this$0).waveManager.setAlpha(0.0F);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.multiwaveview.GlowPadView.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */