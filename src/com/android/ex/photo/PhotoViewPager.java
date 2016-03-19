package com.android.ex.photo;

import ace;
import acf;
import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import jx;
import lu;

public class PhotoViewPager
  extends ViewPager
{
  private float d;
  private int e;
  private float f;
  private float g;
  private acf h;
  
  public PhotoViewPager(Context paramContext)
  {
    super(paramContext);
    h();
  }
  
  public PhotoViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    h();
  }
  
  private void h()
  {
    a(new lu(this));
  }
  
  public void a(acf paramacf)
  {
    h = paramacf;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int k = 1;
    int j;
    if (h != null)
    {
      j = h.a(f, g);
      if ((j != ace.d) && (j != ace.b)) {
        break label142;
      }
      i = 1;
      label47:
      if ((j != ace.d) && (j != ace.c)) {
        break label147;
      }
      j = 1;
      label66:
      int m = paramMotionEvent.getAction() & 0xFF;
      if ((m == 3) || (m == 1)) {
        e = -1;
      }
      switch (m)
      {
      }
    }
    label142:
    label147:
    do
    {
      for (;;)
      {
        return super.onInterceptTouchEvent(paramMotionEvent);
        j = ace.a;
        break;
        i = 0;
        break label47;
        j = 0;
        break label66;
        if ((i != 0) || (j != 0))
        {
          k = e;
          if (k != -1)
          {
            float f1 = jx.c(paramMotionEvent, jx.a(paramMotionEvent, k));
            if ((i != 0) && (j != 0))
            {
              d = f1;
              return false;
            }
            if ((i != 0) && (f1 > d))
            {
              d = f1;
              return false;
            }
            if ((j != 0) && (f1 < d))
            {
              d = f1;
              return false;
              d = paramMotionEvent.getX();
              f = paramMotionEvent.getRawX();
              g = paramMotionEvent.getRawY();
              e = jx.b(paramMotionEvent, 0);
            }
          }
        }
      }
      i = jx.b(paramMotionEvent);
    } while (jx.b(paramMotionEvent, i) != e);
    if (i == 0) {}
    for (int i = k;; i = 0)
    {
      d = jx.c(paramMotionEvent, i);
      e = jx.b(paramMotionEvent, i);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.android.ex.photo.PhotoViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */