package com.google.android.libraries.componentview.components.elements.views;

import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class StructuredDataLayout
  extends ViewGroup
{
  protected ViewGroup.MarginLayoutParams a()
  {
    return new ViewGroup.MarginLayoutParams(-1, -1);
  }
  
  public ViewGroup.MarginLayoutParams a(AttributeSet paramAttributeSet)
  {
    return new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.MarginLayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new ViewGroup.MarginLayoutParams(paramLayoutParams);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof ViewGroup.MarginLayoutParams;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((getChildCount() == 0) || (!paramBoolean)) {}
    for (;;)
    {
      return;
      int i = getPaddingLeft();
      int j = paramInt3 - paramInt1 - i - getPaddingRight();
      int k = getPaddingTop();
      int m = getPaddingBottom();
      StructuredDataLayout.LayoutFiller[] arrayOfLayoutFiller = new StructuredDataLayout.LayoutFiller[3];
      arrayOfLayoutFiller[0] = new StructuredDataLayout.ThreeColumnLayoutFiller(j);
      arrayOfLayoutFiller[1] = new StructuredDataLayout.GreedyLayoutFiller(new int[] { j / 2, j / 2 });
      arrayOfLayoutFiller[2] = new StructuredDataLayout.GreedyLayoutFiller(new int[] { j });
      paramInt1 = 0;
      Object localObject;
      while (paramInt1 < getChildCount())
      {
        localObject = getChildAt(paramInt1);
        paramInt3 = 0;
        while (paramInt3 < 3)
        {
          arrayOfLayoutFiller[paramInt3].a((View)localObject);
          paramInt3 += 1;
        }
        ((View)localObject).setVisibility(8);
        paramInt1 += 1;
      }
      paramInt1 = 0;
      while (paramInt1 < 3)
      {
        localObject = arrayOfLayoutFiller[paramInt1];
        if (((StructuredDataLayout.LayoutFiller)localObject).a())
        {
          ((StructuredDataLayout.LayoutFiller)localObject).a(i, k, i + j, paramInt4 - paramInt2 - m);
          return;
        }
        paramInt1 += 1;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (View.MeasureSpec.getMode(paramInt1) != 0) {}
    int k;
    int m;
    for (int i = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1), Integer.MIN_VALUE);; i = View.MeasureSpec.makeMeasureSpec(0, 0))
    {
      int j = 0;
      k = 0;
      m = 0;
      while (j < getChildCount())
      {
        View localView = getChildAt(j);
        measureChildWithMargins(localView, i, 0, paramInt2, 0);
        m = Math.max(m, localView.getMeasuredHeight());
        k = combineMeasuredStates(k, localView.getMeasuredState());
        j += 1;
      }
    }
    setMeasuredDimension(View.MeasureSpec.getSize(paramInt1), resolveSizeAndState(m, paramInt2, k << 16));
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.views.StructuredDataLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */