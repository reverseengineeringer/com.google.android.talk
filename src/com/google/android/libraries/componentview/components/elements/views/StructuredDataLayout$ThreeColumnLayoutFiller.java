package com.google.android.libraries.componentview.components.elements.views;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

class StructuredDataLayout$ThreeColumnLayoutFiller
  implements StructuredDataLayout.LayoutFiller
{
  private final int a;
  private int b = 0;
  private View c;
  private List<View> d;
  
  public StructuredDataLayout$ThreeColumnLayoutFiller(int paramInt)
  {
    a = paramInt;
    d = new ArrayList(3);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView1;
    View localView2;
    if (c != null)
    {
      localView1 = c;
      localView2 = (View)d.get(0);
    }
    for (View localView3 = (View)d.get(1);; localView3 = (View)d.get(2))
    {
      int i = a / 2 + paramInt1;
      int j = a / 4 + i;
      localView1.setVisibility(0);
      localView1.layout(paramInt1, paramInt2, i, paramInt4);
      localView2.setVisibility(0);
      localView2.layout(i, paramInt2, j, paramInt4);
      localView3.setVisibility(0);
      localView3.layout(j, paramInt2, paramInt3, paramInt4);
      return;
      localView1 = (View)d.get(0);
      localView2 = (View)d.get(1);
    }
  }
  
  public void a(View paramView)
  {
    if (!a())
    {
      if (paramView.getMeasuredWidth() > a / 4) {
        break label42;
      }
      d.add(paramView);
      b += 1;
    }
    label42:
    while ((c != null) || (paramView.getMeasuredWidth() > a / 2)) {
      return;
    }
    c = paramView;
    b += 1;
  }
  
  public boolean a()
  {
    return b == 3;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.views.StructuredDataLayout.ThreeColumnLayoutFiller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */