package com.google.android.apps.hangouts.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class MessageBubbleView
  extends LinearLayout
{
  private int a = -1;
  private int b;
  
  public MessageBubbleView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MessageBubbleView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    b = getMeasuredWidth();
    if (a > 0)
    {
      setMeasuredDimension(a, getMeasuredHeight());
      return;
    }
    setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.MessageBubbleView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */