package com.google.android.apps.hangouts.floatingactionbutton.impl;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import bxm;
import bxn;

public class QuickButtonContainer
  extends FrameLayout
{
  public boolean a;
  public boolean b;
  public Animator c;
  public int d;
  public Animator.AnimatorListener e = new bxn(this);
  private ValueAnimator.AnimatorUpdateListener f = new bxm(this);
  
  public QuickButtonContainer(Context paramContext)
  {
    super(paramContext);
  }
  
  public QuickButtonContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public QuickButtonContainer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public QuickButtonContainer(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  public ValueAnimator.AnimatorUpdateListener a()
  {
    return f;
  }
  
  public Animator.AnimatorListener b()
  {
    return e;
  }
  
  public boolean isClickable()
  {
    return getVisibility() != 8;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.floatingactionbutton.impl.QuickButtonContainer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */