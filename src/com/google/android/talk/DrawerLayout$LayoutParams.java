package com.google.android.talk;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;

public class DrawerLayout$LayoutParams
  extends ViewGroup.LayoutParams
{
  public int contractedWidth;
  public int leftMargin;
  public float weight;
  
  public DrawerLayout$LayoutParams(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
    weight = 0.0F;
  }
  
  public DrawerLayout$LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.DrawerLayoutChild);
    contractedWidth = paramContext.getDimensionPixelOffset(0, 100);
    weight = paramContext.getFloat(1, 0.0F);
    leftMargin = paramContext.getDimensionPixelOffset(2, 0);
    paramContext.recycle();
  }
  
  public DrawerLayout$LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.DrawerLayout.LayoutParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */