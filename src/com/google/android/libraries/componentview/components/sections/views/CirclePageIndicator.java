package com.google.android.libraries.componentview.components.sections.views;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.MeasureSpec;
import kh;
import lt;

public class CirclePageIndicator
  extends View
  implements lt
{
  private static final int a = Color.argb(41, 0, 0, 0);
  private static final int b = Color.argb(102, 0, 0, 0);
  private ViewPager c;
  private final float d;
  private final float e;
  private final Paint f;
  private final Paint g;
  
  private int a()
  {
    return b() + getPaddingLeft() + getPaddingRight();
  }
  
  private int b()
  {
    if (c == null) {
      return 0;
    }
    int i = d();
    float f1 = d;
    float f2 = i;
    float f3 = e;
    return (int)((i - 1) * f3 + f1 * f2);
  }
  
  private int c()
  {
    if (c == null) {}
    for (int i = 0;; i = (int)d) {
      return i + getPaddingTop() + getPaddingBottom();
    }
  }
  
  private int d()
  {
    if (c != null) {
      return c.b().b();
    }
    return 0;
  }
  
  public void a(int paramInt)
  {
    invalidate();
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void b(int paramInt) {}
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    float f3 = getMeasuredWidth() - (getPaddingLeft() + getPaddingRight());
    float f4 = getMeasuredHeight() - (getPaddingTop() + getPaddingBottom());
    if ((f3 <= 0.0F) || (f4 <= 0.0F)) {
      return;
    }
    int k = d();
    int i;
    label76:
    float f2;
    float f1;
    int j;
    if (c != null)
    {
      i = c.c();
      f2 = d / 2.0F;
      f1 = getPaddingLeft();
      float f5 = f3 / 2.0F;
      float f6 = b() / 2;
      f3 = getPaddingTop();
      f4 /= 2.0F;
      f1 = f5 + f1 - f6 + f2;
      j = 0;
      label130:
      if (j < k) {
        if (i != j) {
          break label190;
        }
      }
    }
    label190:
    for (Paint localPaint = f;; localPaint = g)
    {
      paramCanvas.drawCircle(f1, f3 + f4, f2, localPaint);
      f1 += d + e;
      j += 1;
      break label130;
      break;
      i = -1;
      break label76;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    switch (View.MeasureSpec.getMode(paramInt1))
    {
    default: 
      paramInt1 = getDefaultSize(getSuggestedMinimumWidth(), paramInt1);
      switch (View.MeasureSpec.getMode(paramInt2))
      {
      default: 
        paramInt2 = getDefaultSize(getSuggestedMinimumHeight(), paramInt2);
      }
      break;
    }
    for (;;)
    {
      setMeasuredDimension(paramInt1, paramInt2);
      return;
      paramInt1 = View.MeasureSpec.getSize(paramInt1);
      break;
      paramInt1 = Math.max(a(), getSuggestedMinimumWidth());
      break;
      paramInt1 = Math.min(View.MeasureSpec.getSize(paramInt1), Math.max(a(), getSuggestedMinimumWidth()));
      break;
      paramInt2 = View.MeasureSpec.getSize(paramInt2);
      continue;
      paramInt2 = Math.max(c(), getSuggestedMinimumHeight());
      continue;
      paramInt2 = Math.min(View.MeasureSpec.getSize(paramInt2), Math.max(c(), getSuggestedMinimumHeight()));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.sections.views.CirclePageIndicator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */