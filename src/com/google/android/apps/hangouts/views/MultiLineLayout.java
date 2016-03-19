package com.google.android.apps.hangouts.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import fds;
import fdt;

public class MultiLineLayout
  extends ViewGroup
{
  private final fds a = new fds(this);
  private final fdt b = new fdt(this);
  
  public MultiLineLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a.a(paramInt3 - paramInt1);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    b.a(paramInt1, paramInt2);
    b.a(resolveSize(Integer.MAX_VALUE, paramInt1));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.MultiLineLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */