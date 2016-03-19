package com.google.android.libraries.componentview.components.elements;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.LinearLayout;
import com.google.android.libraries.componentview.components.elements.views.CarouselView;

class CarouselComponent$1
  implements ViewTreeObserver.OnPreDrawListener
{
  public boolean onPreDraw()
  {
    a.h.getViewTreeObserver().removeOnPreDrawListener(this);
    if (a.g < a.f.getChildCount())
    {
      a.i = a.f.getChildAt(a.g).getLeft();
      a.h.scrollTo(a.i, 0);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.CarouselComponent.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */