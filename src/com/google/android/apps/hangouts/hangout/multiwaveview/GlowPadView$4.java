package com.google.android.apps.hangouts.hangout.multiwaveview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class GlowPadView$4
  extends AnimatorListenerAdapter
{
  GlowPadView$4(GlowPadView paramGlowPadView) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (GlowPadView.access$500(this$0) != 0)
    {
      GlowPadView.access$600(this$0, GlowPadView.access$500(this$0));
      GlowPadView.access$502(this$0, 0);
      GlowPadView.access$700(this$0, false, false);
    }
    GlowPadView.access$802(this$0, false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.multiwaveview.GlowPadView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */