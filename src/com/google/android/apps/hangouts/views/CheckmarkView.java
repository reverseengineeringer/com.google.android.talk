package com.google.android.apps.hangouts.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CompoundButton;

public class CheckmarkView
  extends CompoundButton
{
  public CheckmarkView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CheckmarkView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CheckmarkView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void setChecked(boolean paramBoolean)
  {
    super.setChecked(paramBoolean);
    sendAccessibilityEvent(1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.CheckmarkView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */