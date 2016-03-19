package com.google.android.apps.hangouts.fragments.dialpad;

import aal;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import cdx;
import cdy;
import cdz;
import hbs;
import mv;
import mx;

public class DialpadKeyButton
  extends FrameLayout
{
  private static final int d = ViewConfiguration.getLongPressTimeout() << 1;
  private static final Handler e = new Handler();
  public AccessibilityManager a;
  public int b;
  public CharSequence c;
  private RectF f = new RectF();
  private boolean g;
  private boolean h;
  private CharSequence i;
  private boolean j;
  private boolean k;
  private Runnable l;
  private cdz m;
  
  public DialpadKeyButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public DialpadKeyButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    a = ((AccessibilityManager)paramContext.getSystemService("accessibility"));
  }
  
  private void b()
  {
    if (isPressed()) {
      return;
    }
    setPressed(true);
    sendAccessibilityEvent(1);
    setPressed(false);
  }
  
  public void a()
  {
    if (m != null) {
      m.a(this);
    }
  }
  
  public void a(cdz paramcdz)
  {
    m = paramcdz;
  }
  
  public void a(CharSequence paramCharSequence)
  {
    setLongClickable(true);
    c = paramCharSequence;
    if (h) {
      super.setContentDescription(c);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (m != null) {
      m.a(this, paramBoolean);
    }
  }
  
  public void b(boolean paramBoolean)
  {
    if (h != paramBoolean) {
      h = paramBoolean;
    }
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    if (a.isEnabled())
    {
      AccessibilityManager localAccessibilityManager = a;
      if (!mv.a.a(localAccessibilityManager)) {}
    }
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
    case 9: 
      for (;;)
      {
        return super.onHoverEvent(paramMotionEvent);
        super.setContentDescription(i);
        j = isClickable();
        k = isLongClickable();
        if ((k) && (c != null))
        {
          if (l == null) {
            l = new cdy(this);
          }
          postDelayed(l, d);
        }
        setClickable(false);
        setLongClickable(false);
      }
    }
    if (f.contains(paramMotionEvent.getX(), paramMotionEvent.getY()))
    {
      if (!h) {
        break label268;
      }
      performLongClick();
      label171:
      if (!isPressed())
      {
        setPressed(true);
        a(true);
      }
      hbs.a("Expected condition to be true", isPressed());
      setPressed(false);
      a(false);
      if (!h) {
        break label275;
      }
      a();
    }
    for (;;)
    {
      b += 1;
      if (l != null) {
        removeCallbacks(l);
      }
      b(false);
      setClickable(j);
      setLongClickable(k);
      break;
      label268:
      b();
      break label171;
      label275:
      performClick();
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 66)
    {
      if (paramKeyEvent.getRepeatCount() != 0) {
        return true;
      }
      paramKeyEvent.startTracking();
      a(true);
      g = false;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyLongPress(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 66)
    {
      a(false);
      if (isLongClickable()) {
        a();
      }
      g = true;
    }
    return super.onKeyLongPress(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 66) && (!g)) {
      a(false);
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    setMeasuredDimension(View.MeasureSpec.getSize(paramInt1) / 3, getResources().getDimensionPixelSize(aal.dO));
  }
  
  public void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    f.set(getPaddingLeft(), getPaddingTop(), paramInt1 - getPaddingRight(), paramInt2 - getPaddingBottom());
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    do
    {
      do
      {
        return true;
      } while (isPressed());
      setPressed(true);
      a(true);
      int n = b;
      e.postDelayed(new cdx(this, n), ViewConfiguration.getLongPressTimeout());
      return true;
    } while (!isPressed());
    setPressed(false);
    a(false);
    b += 1;
    performClick();
    return true;
  }
  
  public boolean performAccessibilityAction(int paramInt, Bundle paramBundle)
  {
    if (paramInt == 16)
    {
      b();
      a(true);
      a(false);
      return true;
    }
    if (paramInt == 32)
    {
      if (!isPressed())
      {
        setPressed(true);
        sendAccessibilityEvent(2);
        setPressed(false);
      }
      a(true);
      a(false);
      a();
    }
    return super.performAccessibilityAction(paramInt, paramBundle);
  }
  
  public void setContentDescription(CharSequence paramCharSequence)
  {
    i = paramCharSequence;
    super.setContentDescription(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.fragments.dialpad.DialpadKeyButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */