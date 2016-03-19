package com.google.android.libraries.componentview.components.elements;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;

class CardComponent$ExpandAnimatorListener
  extends AnimatorListenerAdapter
  implements ValueAnimator.AnimatorUpdateListener
{
  private final View a;
  private final ViewGroup.MarginLayoutParams b;
  private final int c;
  private final int d;
  private final int e;
  private final Rect f;
  private final boolean g;
  
  public CardComponent$ExpandAnimatorListener(View paramView, boolean paramBoolean)
  {
    a = paramView;
    b = ((ViewGroup.MarginLayoutParams)paramView.getLayoutParams());
    c = b.topMargin;
    d = b.bottomMargin;
    e = (paramView.getHeight() + c + d);
    f = new Rect(0, 0, paramView.getWidth(), paramView.getHeight());
    g = paramBoolean;
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    b.topMargin = c;
    b.bottomMargin = d;
    a.setClipBounds(null);
    if (!g) {
      a.setVisibility(8);
    }
  }
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    float f2 = paramValueAnimator.getAnimatedFraction();
    float f1 = f2;
    if (!g) {
      f1 = 1.0F - f2;
    }
    int i = (int)(f1 * e);
    f.bottom = Math.max(1, Math.min(a.getHeight(), i - c));
    a.setClipBounds(f);
    b.bottomMargin = (i - (e - d));
    a.requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.CardComponent.ExpandAnimatorListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */