package com.google.android.libraries.componentview.components.sections;

import android.view.View;
import android.view.ViewGroup;
import java.util.List;
import kh;

class FlippyCarouselComponent$CustomPagerAdapter
  extends kh
{
  private final List<View> a;
  
  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    View localView = (View)a.get(paramInt);
    paramViewGroup.addView(localView);
    return localView;
  }
  
  public void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public boolean a(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
  
  public int b()
  {
    return a.size();
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.sections.FlippyCarouselComponent.CustomPagerAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */