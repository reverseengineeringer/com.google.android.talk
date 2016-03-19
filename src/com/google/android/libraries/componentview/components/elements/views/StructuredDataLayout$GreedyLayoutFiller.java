package com.google.android.libraries.componentview.components.elements.views;

import android.view.View;

class StructuredDataLayout$GreedyLayoutFiller
  implements StructuredDataLayout.LayoutFiller
{
  private int a = 0;
  private int[] b;
  private View[] c;
  
  public StructuredDataLayout$GreedyLayoutFiller(int[] paramArrayOfInt)
  {
    b = paramArrayOfInt;
    c = new View[paramArrayOfInt.length];
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 0;
    paramInt3 = paramInt1;
    paramInt1 = i;
    while (paramInt1 < a)
    {
      i = b[paramInt1] + paramInt3;
      c[paramInt1].setVisibility(0);
      c[paramInt1].layout(paramInt3, paramInt2, i, paramInt4);
      paramInt1 += 1;
      paramInt3 = i;
    }
  }
  
  public void a(View paramView)
  {
    if ((!a()) && (paramView.getMeasuredWidth() <= b[a]))
    {
      View[] arrayOfView = c;
      int i = a;
      a = (i + 1);
      arrayOfView[i] = paramView;
    }
  }
  
  public boolean a()
  {
    return a == b.length;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.views.StructuredDataLayout.GreedyLayoutFiller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */