package com.google.android.talk;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class DividerDrawingListItem
  extends LinearLayout
{
  private Drawable mDivider = new ColorDrawable(-3355444);
  private Rect mDividerDrawRect = new Rect();
  private int mDividerHeight;
  private int mShoveDistance = -1;
  private boolean mShoverEnabled = true;
  
  public DividerDrawingListItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public DividerDrawingListItem(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  private void init()
  {
    mShoveDistance = getResources().getDimensionPixelOffset(2131427333);
    mDividerHeight = ((int)getResources().getDimension(2131427392));
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    Rect localRect = mDividerDrawRect;
    if (shoverEnabled()) {}
    for (int i = mShoveDistance;; i = 0)
    {
      left = i;
      mDividerDrawRect.right = getRight();
      mDividerDrawRect.top = 0;
      mDividerDrawRect.bottom = mDividerHeight;
      mDivider.setBounds(mDividerDrawRect);
      mDivider.draw(paramCanvas);
      return;
    }
  }
  
  public void setShoverEnabled(boolean paramBoolean)
  {
    mShoverEnabled = paramBoolean;
  }
  
  protected boolean shoverEnabled()
  {
    return mShoverEnabled;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.DividerDrawingListItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */