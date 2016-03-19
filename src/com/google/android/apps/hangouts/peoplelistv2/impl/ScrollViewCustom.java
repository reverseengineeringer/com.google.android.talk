package com.google.android.apps.hangouts.peoplelistv2.impl;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.ScrollView;
import com.google.android.apps.common.proguard.UsedByReflection;
import dcf;
import dcg;
import dch;

public class ScrollViewCustom
  extends ScrollView
{
  public int a = Integer.MAX_VALUE;
  public Handler b = new Handler();
  public boolean c;
  public Runnable d = new dch(this);
  private int e;
  private ObjectAnimator f;
  
  public ScrollViewCustom(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, dcf.T);
    try
    {
      a = paramContext.getDimensionPixelSize(dcf.U, a);
      e = paramContext.getDimensionPixelSize(dcf.V, e);
      paramContext.recycle();
      if (f == null)
      {
        f = ObjectAnimator.ofInt(this, "height", new int[] { 0, 0 });
        f.addListener(new dcg(this));
        f.setDuration(200L);
        f.setTarget(this);
      }
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
    requestLayout();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = getChildAt(0).getMeasuredHeight();
    i = Math.min(a, Math.max(e, i));
    super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(Math.min(a, View.MeasureSpec.getSize(paramInt2)), View.MeasureSpec.getMode(paramInt2)));
    if ((i != getMeasuredHeight()) && (!c))
    {
      c = true;
      f.setIntValues(new int[] { getMeasuredHeight(), i });
      f.start();
    }
  }
  
  @UsedByReflection
  public void setHeight(int paramInt)
  {
    ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
    height = paramInt;
    setLayoutParams(localLayoutParams);
    requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.peoplelistv2.impl.ScrollViewCustom
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */