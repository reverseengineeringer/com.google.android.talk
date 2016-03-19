package com.google.android.libraries.componentview.components.elements.views;

import android.widget.HorizontalScrollView;

public class CarouselView
  extends HorizontalScrollView
{
  private CarouselView.OnScrollCallback a;
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (a != null) {
      a.a(paramInt1);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.views.CarouselView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */