package com.google.android.libraries.componentview.components.elements;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class CardComponent$3$1
  extends AnimatorListenerAdapter
{
  CardComponent$3$1(CardComponent.3 param3) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    a.e.f = false;
    if (a.d != null) {
      a.d.run();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.CardComponent.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */