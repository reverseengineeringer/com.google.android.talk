package com.google.android.apps.hangouts.util;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import bu;

public class FragmentTabHostEx
  extends bu
{
  private boolean a;
  
  public FragmentTabHostEx(Context paramContext)
  {
    super(paramContext);
  }
  
  public FragmentTabHostEx(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onAttachedToWindow()
  {
    if (!a) {
      super.onAttachedToWindow();
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    a = true;
    return super.onSaveInstanceState();
  }
  
  public void onTouchModeChanged(boolean paramBoolean) {}
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.util.FragmentTabHostEx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */