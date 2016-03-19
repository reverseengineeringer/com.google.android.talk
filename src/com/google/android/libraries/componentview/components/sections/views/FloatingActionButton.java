package com.google.android.libraries.componentview.components.sections.views;

import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;

public class FloatingActionButton
  extends ImageView
{
  private int a;
  
  public ViewGroup.LayoutParams getLayoutParams()
  {
    ViewGroup.LayoutParams localLayoutParams = super.getLayoutParams();
    if (localLayoutParams != null)
    {
      height = a;
      width = a;
    }
    return localLayoutParams;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.sections.views.FloatingActionButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */