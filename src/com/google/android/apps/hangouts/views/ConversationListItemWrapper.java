package com.google.android.apps.hangouts.views;

import aen;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import axc;
import crq;
import fan;
import fbk;
import fbl;

public class ConversationListItemWrapper
  extends LinearLayout
  implements crq
{
  public View a;
  final Runnable b = new fbk(this);
  private int c = -1;
  private View d;
  private View e;
  private View f;
  
  public ConversationListItemWrapper(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public View a()
  {
    return e();
  }
  
  public void a(int paramInt)
  {
    int j = 8;
    d.setVisibility(0);
    View localView = e;
    int i;
    if (paramInt < 0)
    {
      i = 8;
      localView.setVisibility(i);
      localView = f;
      if (paramInt <= 0) {
        break label54;
      }
    }
    label54:
    for (paramInt = j;; paramInt = 0)
    {
      localView.setVisibility(paramInt);
      return;
      i = 0;
      break;
    }
  }
  
  public void a(View paramView)
  {
    ((FrameLayout)findViewById(aen.bg)).addView(paramView);
    a = paramView;
  }
  
  public boolean b()
  {
    return a instanceof fan;
  }
  
  public void c()
  {
    Runnable localRunnable = b;
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofInt(this, "animatedHeight", new int[] { getMeasuredHeight(), 0 });
    localObjectAnimator.setInterpolator(new axc((byte)0));
    localObjectAnimator.setDuration(200L);
    localObjectAnimator.addListener(new fbl(this, localRunnable));
    localObjectAnimator.start();
  }
  
  public void d()
  {
    d.setVisibility(8);
  }
  
  public View e()
  {
    return a;
  }
  
  public void f()
  {
    c = -1;
    a.setTranslationX(0.0F);
    a.setAlpha(1.0F);
    setAlpha(1.0F);
    d();
  }
  
  public void onFinishInflate()
  {
    super.onFinishInflate();
    d = findViewById(aen.bd);
    e = findViewById(aen.be);
    f = findViewById(aen.bf);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (c == -1)
    {
      setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
      return;
    }
    setMeasuredDimension(getMeasuredWidth(), c);
  }
  
  public void setAnimatedHeight(int paramInt)
  {
    c = paramInt;
    requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.ConversationListItemWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */