package com.google.android.talk;

import android.content.Context;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;

class AnimatedAdapter2$AnimatingItemView
  extends ViewGroup
{
  private boolean mDeleted;
  private int mForcedHeight;
  private int mLayoutCount;
  
  public AnimatedAdapter2$AnimatingItemView(AnimatedAdapter2 paramAnimatedAdapter2, Context paramContext)
  {
    super(paramContext);
    setLayerType(2, null);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    mLayoutCount += 1;
    if (getChildCount() > 0)
    {
      View localView = getChildAt(0);
      localView.layout(0, 0, paramInt3 - paramInt1, localView.getMeasuredHeight());
      if (mDeleted) {
        localView.scrollTo(0, localView.getMeasuredHeight() - getMeasuredHeight());
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (getChildCount() == 0)
    {
      paramInt2 = View.MeasureSpec.getSize(paramInt1);
      int i = View.MeasureSpec.getMode(paramInt1);
      paramInt1 = 0;
      if (i != 0) {
        paramInt1 = paramInt2;
      }
      setMeasuredDimension(paramInt1, (int)(AnimatedAdapter2.access$000(this$0) * mForcedHeight));
      return;
    }
    View localView = getChildAt(0);
    paramInt2 = mForcedHeight;
    paramInt1 = (int)(paramInt2 * AnimatedAdapter2.access$000(this$0));
    if (mDeleted) {}
    for (;;)
    {
      setMeasuredDimension(localView.getMeasuredWidth(), paramInt1);
      return;
      paramInt1 = paramInt2 - paramInt1;
    }
  }
  
  public void setForcedHeight(int paramInt, boolean paramBoolean)
  {
    mForcedHeight = paramInt;
    mDeleted = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AnimatedAdapter2.AnimatingItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */