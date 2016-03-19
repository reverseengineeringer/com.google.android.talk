package com.google.android.apps.hangouts.peoplelistv2.impl;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.ImageView;

public class MinHeightImageView
  extends ImageView
{
  public MinHeightImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public MinHeightImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public MinHeightImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public MinHeightImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    paramInt1 = (int)(paramInt2 / getResourcesgetDisplayMetricsdensity);
    if ((getVisibility() != 8) && (paramInt1 < 100))
    {
      setVisibility(4);
      return;
    }
    setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.peoplelistv2.impl.MinHeightImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */