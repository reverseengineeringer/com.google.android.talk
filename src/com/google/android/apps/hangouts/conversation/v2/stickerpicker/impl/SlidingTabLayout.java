package com.google.android.apps.hangouts.conversation.v2.stickerpicker.impl;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import btv;
import btw;
import btx;
import bty;
import kh;
import lt;

public class SlidingTabLayout
  extends HorizontalScrollView
{
  public ViewPager a;
  public lt b;
  public final bty c;
  private int d;
  private int e;
  private int f;
  private boolean g;
  private SparseArray<String> h = new SparseArray();
  
  public SlidingTabLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SlidingTabLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SlidingTabLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setHorizontalScrollBarEnabled(false);
    setFillViewport(true);
    d = ((int)(24.0F * getResourcesgetDisplayMetricsdensity));
    paramAttributeSet = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, btv.W, 0, 0);
    try
    {
      paramInt = paramAttributeSet.getInteger(btv.X, 0);
      paramAttributeSet.recycle();
      c = new bty(paramContext, paramInt);
      addView(c, -1, -2);
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  public View a(int paramInt)
  {
    if ((c == null) || (paramInt >= c.getChildCount())) {
      return null;
    }
    return c.getChildAt(paramInt);
  }
  
  protected TextView a(Context paramContext)
  {
    paramContext = new TextView(paramContext);
    paramContext.setGravity(17);
    paramContext.setTextSize(2, 12.0F);
    paramContext.setTypeface(Typeface.DEFAULT_BOLD);
    paramContext.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    TypedValue localTypedValue = new TypedValue();
    getContext().getTheme().resolveAttribute(16843534, localTypedValue, true);
    paramContext.setBackgroundResource(resourceId);
    paramContext.setAllCaps(true);
    int i = (int)(16.0F * getResourcesgetDisplayMetricsdensity);
    paramContext.setPadding(i, i, i, i);
    return paramContext;
  }
  
  public void a()
  {
    g = true;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    e = paramInt1;
    f = paramInt2;
  }
  
  public void a(ViewPager paramViewPager)
  {
    c.removeAllViews();
    a = paramViewPager;
    kh localkh;
    btx localbtx;
    int i;
    Object localObject1;
    if (paramViewPager != null)
    {
      paramViewPager.a(new btw(this));
      localkh = a.b();
      localbtx = new btx(this);
      if (localkh != null)
      {
        i = 0;
        if (i < localkh.b())
        {
          if (e == 0) {
            break label242;
          }
          localObject1 = LayoutInflater.from(getContext()).inflate(e, c, false);
          paramViewPager = (TextView)((View)localObject1).findViewById(f);
        }
      }
    }
    for (;;)
    {
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = a(getContext());
      }
      if ((paramViewPager == null) && (TextView.class.isInstance(localObject2))) {
        paramViewPager = (TextView)localObject2;
      }
      for (;;)
      {
        if (g)
        {
          localObject1 = (LinearLayout.LayoutParams)((View)localObject2).getLayoutParams();
          width = 0;
          weight = 1.0F;
        }
        paramViewPager.setText(localkh.c(i));
        ((View)localObject2).setOnClickListener(localbtx);
        paramViewPager = (String)h.get(i, null);
        if (paramViewPager != null) {
          ((View)localObject2).setContentDescription(paramViewPager);
        }
        c.addView((View)localObject2);
        if (i == a.c()) {
          ((View)localObject2).setSelected(true);
        }
        i += 1;
        break;
        return;
      }
      label242:
      paramViewPager = null;
      localObject1 = null;
    }
  }
  
  public void b(int paramInt)
  {
    if (d != paramInt)
    {
      d = paramInt;
      if (a != null) {
        b(a.c(), 0);
      }
    }
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    int i = c.getChildCount();
    if ((i == 0) || (paramInt1 < 0) || (paramInt1 >= i)) {}
    View localView;
    do
    {
      return;
      localView = c.getChildAt(paramInt1);
    } while (localView == null);
    i = localView.getLeft() + paramInt2;
    if (paramInt1 <= 0)
    {
      paramInt1 = i;
      if (paramInt2 <= 0) {}
    }
    else
    {
      paramInt1 = i - d;
    }
    scrollTo(paramInt1, 0);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (a != null) {
      b(a.c(), 0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.conversation.v2.stickerpicker.impl.SlidingTabLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */