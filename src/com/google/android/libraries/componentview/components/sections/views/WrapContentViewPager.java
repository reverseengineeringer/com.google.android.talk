package com.google.android.libraries.componentview.components.sections.views;

import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.MeasureSpec;

public class WrapContentViewPager
  extends ViewPager
{
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (getChildCount() > 0)
    {
      View localView = getChildAt(0);
      localView.measure(paramInt1, View.MeasureSpec.makeMeasureSpec(0, 0));
      paramInt2 = View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824);
    }
    super.onMeasure(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.sections.views.WrapContentViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */