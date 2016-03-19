package com.google.android.libraries.quantum.bottomsheet;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import hpj;

public final class BottomSheetLinearLayout
  extends LinearLayout
{
  private int a;
  private int b;
  private int c;
  
  public BottomSheetLinearLayout(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public BottomSheetLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private int a(int paramInt)
  {
    Resources localResources = getResources();
    return (int)TypedValue.applyDimension(1, paramInt, localResources.getDisplayMetrics());
  }
  
  private void a()
  {
    c = hpj.a(getContext());
    if (c <= 600)
    {
      b = a(c);
      a = Integer.MAX_VALUE;
      return;
    }
    if (c <= 960)
    {
      a = a(832);
      b = a(384);
      return;
    }
    if (c <= 1280)
    {
      a = a(1024);
      b = a(512);
      return;
    }
    a = a(1056);
    b = a(576);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int j = View.MeasureSpec.getSize(paramInt1);
    int i;
    if (j > a)
    {
      paramInt1 = View.MeasureSpec.getMode(paramInt1);
      i = View.MeasureSpec.makeMeasureSpec(a, paramInt1);
    }
    for (;;)
    {
      super.onMeasure(i, paramInt2);
      return;
      i = paramInt1;
      if (j < b)
      {
        paramInt1 = View.MeasureSpec.getMode(paramInt1);
        i = View.MeasureSpec.makeMeasureSpec(b, paramInt1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.quantum.bottomsheet.BottomSheetLinearLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */