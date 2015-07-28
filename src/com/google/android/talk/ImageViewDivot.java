package com.google.android.talk;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.ImageView;

public class ImageViewDivot
  extends ImageView
  implements Divot
{
  private float mDensity;
  private Drawable mDrawable;
  private int mDrawableIntrinsicHeight;
  private int mDrawableIntrinsicWidth;
  private int mPosition;
  
  public ImageViewDivot(Context paramContext)
  {
    super(paramContext);
    initialize(null);
  }
  
  public ImageViewDivot(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initialize(paramAttributeSet);
  }
  
  public ImageViewDivot(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initialize(paramAttributeSet);
  }
  
  private void computeBounds(Canvas paramCanvas)
  {
    int k = getWidth();
    int i = k / 2;
    int j = getHeight();
    int m = (int)getCloseOffset();
    switch (mPosition)
    {
    default: 
      return;
    case 4: 
      mDrawable.setBounds(k - mDrawableIntrinsicWidth, m + 0, k, m + 0 + mDrawableIntrinsicHeight);
      return;
    case 1: 
      mDrawable.setBounds(0, m + 0, mDrawableIntrinsicWidth + 0, m + 0 + mDrawableIntrinsicHeight);
      return;
    }
    k = mDrawableIntrinsicWidth / 2;
    mDrawable.setBounds(i - k, j - mDrawableIntrinsicHeight, i + k, j);
  }
  
  private void initialize(AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet != null) {
      mPosition = paramAttributeSet.getAttributeListValue(null, "position", sPositionChoices, -1);
    }
    mDensity = getContextgetResourcesgetDisplayMetricsdensity;
    setDrawable();
  }
  
  private void setDrawable()
  {
    Resources localResources = getContext().getResources();
    switch (mPosition)
    {
    }
    for (;;)
    {
      mDrawableIntrinsicWidth = mDrawable.getIntrinsicWidth();
      mDrawableIntrinsicHeight = mDrawable.getIntrinsicHeight();
      return;
      mDrawable = localResources.getDrawable(2130837674);
      continue;
      mDrawable = localResources.getDrawable(2130837673);
      continue;
      mDrawable = localResources.getDrawable(2130837672);
      continue;
      mDrawable = localResources.getDrawable(2130837675);
    }
  }
  
  public ImageView asImageView()
  {
    return this;
  }
  
  public void assignContactFromEmail(String paramString) {}
  
  public float getCloseOffset()
  {
    return 12.0F * mDensity;
  }
  
  public float getFarOffset()
  {
    return getCloseOffset() + mDrawableIntrinsicHeight;
  }
  
  public int getPosition()
  {
    return mPosition;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.save();
    computeBounds(paramCanvas);
    mDrawable.draw(paramCanvas);
    paramCanvas.restore();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ImageViewDivot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */