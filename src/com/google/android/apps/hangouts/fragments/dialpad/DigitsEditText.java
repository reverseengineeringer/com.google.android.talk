package com.google.android.apps.hangouts.fragments.dialpad;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import cea;

public class DigitsEditText
  extends EditText
{
  public DigitsEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setInputType(getInputType() | 0x80000);
    addTextChangedListener(new cea(this));
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    paramRect = (InputMethodManager)getContext().getSystemService("input_method");
    if ((paramRect != null) && (paramRect.isActive(this))) {
      paramRect.hideSoftInputFromWindow(getApplicationWindowToken(), 0);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = super.onTouchEvent(paramMotionEvent);
    paramMotionEvent = (InputMethodManager)getContext().getSystemService("input_method");
    if ((paramMotionEvent != null) && (paramMotionEvent.isActive(this))) {
      paramMotionEvent.hideSoftInputFromWindow(getApplicationWindowToken(), 0);
    }
    return bool;
  }
  
  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 16)
    {
      i = paramAccessibilityEvent.getAddedCount();
      j = paramAccessibilityEvent.getRemovedCount();
      k = paramAccessibilityEvent.getBeforeText().length();
      if (i > j)
      {
        paramAccessibilityEvent.setRemovedCount(0);
        paramAccessibilityEvent.setAddedCount(1);
        paramAccessibilityEvent.setFromIndex(k);
      }
    }
    while (paramAccessibilityEvent.getEventType() != 8) {
      for (;;)
      {
        int i;
        int j;
        int k;
        super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
        do
        {
          return;
        } while (j <= i);
        paramAccessibilityEvent.setRemovedCount(1);
        paramAccessibilityEvent.setAddedCount(0);
        paramAccessibilityEvent.setFromIndex(k - 1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.fragments.dialpad.DigitsEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */