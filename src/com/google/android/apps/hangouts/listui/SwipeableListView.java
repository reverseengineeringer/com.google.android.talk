package com.google.android.apps.hangouts.listui;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ListView;
import crk;
import crp;
import crq;
import crr;

public class SwipeableListView
  extends ListView
  implements crp
{
  private crk a;
  private boolean b = false;
  private boolean c = false;
  private int d;
  private crr e;
  
  public SwipeableListView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public SwipeableListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public SwipeableListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    Resources localResources = getResources();
    float f1 = getDisplayMetricsdensity;
    float f2 = ViewConfiguration.get(paramContext).getScaledPagingTouchSlop();
    a = new crk(localResources, VelocityTracker.obtain(), this, f1, f2);
  }
  
  public View a(MotionEvent paramMotionEvent)
  {
    int j = getChildCount();
    int k = (int)paramMotionEvent.getY();
    int i = 0;
    while (i < j)
    {
      paramMotionEvent = getChildAt(i);
      if ((paramMotionEvent.getVisibility() != 8) && (k >= paramMotionEvent.getTop()) && (k <= paramMotionEvent.getBottom())) {
        return paramMotionEvent;
      }
      i += 1;
    }
    return null;
  }
  
  public void a(crq paramcrq, int paramInt)
  {
    requestDisallowInterceptTouchEvent(true);
    d = paramInt;
    paramcrq.a(paramInt);
    if (e != null) {
      e.a(paramcrq);
    }
  }
  
  public void a(crr paramcrr)
  {
    e = paramcrr;
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public boolean a(crq paramcrq)
  {
    return paramcrq.b();
  }
  
  public void b(crq paramcrq)
  {
    if (paramcrq != null)
    {
      paramcrq.c();
      if (e != null) {
        e.b(paramcrq);
      }
    }
  }
  
  public void b(crq paramcrq, int paramInt)
  {
    if (d != paramInt)
    {
      paramcrq.a(paramInt);
      d = paramInt;
    }
  }
  
  public void c(crq paramcrq)
  {
    paramcrq.d();
    if (e != null) {
      e.b(paramcrq);
    }
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    float f = getResourcesgetDisplayMetricsdensity;
    a.a(f);
    f = ViewConfiguration.get(getContext()).getScaledPagingTouchSlop();
    a.b(f);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (b)
    {
      boolean bool;
      if (c)
      {
        a.b(paramMotionEvent);
        bool = true;
      }
      for (;;)
      {
        if ((paramMotionEvent.getAction() == 1) || (paramMotionEvent.getAction() == 3)) {
          c = false;
        }
        return bool;
        if (a.a(paramMotionEvent))
        {
          c = true;
          MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
          localMotionEvent.setAction(3);
          super.onTouchEvent(localMotionEvent);
          a.b(paramMotionEvent);
          bool = true;
        }
        else
        {
          bool = super.onTouchEvent(paramMotionEvent);
        }
      }
    }
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.listui.SwipeableListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */