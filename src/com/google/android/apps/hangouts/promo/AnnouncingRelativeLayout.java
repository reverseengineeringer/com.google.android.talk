package com.google.android.apps.hangouts.promo;

import android.content.Context;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.widget.RelativeLayout;
import java.util.List;

public class AnnouncingRelativeLayout
  extends RelativeLayout
{
  private String a;
  
  public AnnouncingRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 32)
    {
      onPopulateAccessibilityEvent(paramAccessibilityEvent);
      return true;
    }
    return super.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent);
  }
  
  public void onPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onPopulateAccessibilityEvent(paramAccessibilityEvent);
    if ((paramAccessibilityEvent.getEventType() == 32) && (a != null)) {
      paramAccessibilityEvent.getText().add(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.promo.AnnouncingRelativeLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */