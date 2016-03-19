package com.google.android.apps.hangouts.conversation.v2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;

public class TabWidget
  extends android.widget.TabWidget
{
  public TabWidget(Context paramContext)
  {
    super(paramContext);
  }
  
  public TabWidget(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public TabWidget(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void onFocusChange(View paramView, boolean paramBoolean) {}
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1), 0), paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.conversation.v2.TabWidget
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */