package com.google.android.libraries.componentview.components.elements;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import gvm;
import java.util.Iterator;
import java.util.List;

class CardComponent$3
  implements ViewTreeObserver.OnPreDrawListener
{
  CardComponent$3(CardComponent paramCardComponent, int paramInt, List paramList1, List paramList2, Runnable paramRunnable) {}
  
  public boolean onPreDraw()
  {
    ((gvm)e.c).getViewTreeObserver().removeOnPreDrawListener(this);
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F }).setDuration(a);
    Iterator localIterator = b.iterator();
    CardComponent.ExpandAnimatorListener localExpandAnimatorListener;
    while (localIterator.hasNext())
    {
      localExpandAnimatorListener = new CardComponent.ExpandAnimatorListener((View)localIterator.next(), true);
      localValueAnimator.addUpdateListener(localExpandAnimatorListener);
      localValueAnimator.addListener(localExpandAnimatorListener);
    }
    localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      localExpandAnimatorListener = new CardComponent.ExpandAnimatorListener((View)localIterator.next(), false);
      localValueAnimator.addUpdateListener(localExpandAnimatorListener);
      localValueAnimator.addListener(localExpandAnimatorListener);
    }
    localValueAnimator.addListener(new CardComponent.3.1(this));
    localValueAnimator.start();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.CardComponent.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */