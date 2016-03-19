package com.google.android.apps.hangouts.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

public class ScalingTextView
  extends TextView
{
  private float a = 1.0F;
  
  public ScalingTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, -1);
  }
  
  public ScalingTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(float paramFloat)
  {
    a = paramFloat;
    requestLayout();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    paramInt1 = getMeasuredHeight();
    setMeasuredDimension((int)(getMeasuredWidth() * a), (int)(paramInt1 * a));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.ScalingTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */