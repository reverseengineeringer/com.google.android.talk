package com.google.android.apps.hangouts.util;

import aal;
import aen;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabContentFactory;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import com.google.android.apps.hangouts.views.MainViewPager;
import eyw;
import eyx;
import eyy;
import fcn;
import fco;
import hpu;
import ilh;
import lt;

public class TabHostEx
  extends TabHost
{
  public MainViewPager a;
  public hpu b;
  public final TabHost.OnTabChangeListener c = new eyy(this);
  private boolean d;
  private TabWidget e = getTabWidget();
  private final TabHost.TabContentFactory f = new eyw(this);
  private final lt g = new eyx(this);
  
  public TabHostEx(Context paramContext)
  {
    super(paramContext);
  }
  
  public TabHostEx(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void a()
  {
    int i;
    if ((!d) && (e.getTabCount() > 1))
    {
      i = 0;
      if (Build.VERSION.SDK_INT >= 21) {
        if (i != 0) {
          break label63;
        }
      }
    }
    label63:
    for (float f1 = getResources().getDimension(aal.eC);; f1 = 0.0F)
    {
      setElevation(f1);
      e.setVisibility(i);
      return;
      i = 8;
      break;
    }
  }
  
  public void a(int paramInt)
  {
    if (Build.VERSION.SDK_INT < 21)
    {
      int i = 0;
      if (i < e.getChildCount())
      {
        ImageView localImageView = (ImageView)e.getChildAt(i).findViewById(aen.gB);
        TypedValue localTypedValue;
        Resources localResources;
        if (localImageView != null)
        {
          localTypedValue = new TypedValue();
          localResources = getResources();
          if (i != paramInt) {
            break label95;
          }
        }
        label95:
        for (int j = aal.dK;; j = aal.dJ)
        {
          localResources.getValue(j, localTypedValue, true);
          localImageView.setAlpha(localTypedValue.getFloat());
          i += 1;
          break;
        }
      }
    }
  }
  
  public void a(LayoutInflater paramLayoutInflater)
  {
    setOnTabChangedListener(null);
    clearAllTabs();
    fco localfco = a.h();
    int j = localfco.b();
    int i = 0;
    while (i < j)
    {
      fcn localfcn = localfco.d(i);
      View localView = paramLayoutInflater.inflate(aal.gM, null);
      ImageView localImageView = (ImageView)localView.findViewById(aen.gB);
      localImageView.setContentDescription(getResources().getString(a));
      localImageView.setImageResource(b);
      addTab(newTabSpec(d).setIndicator(localView).setContent(f));
      i += 1;
    }
    if (j > 0)
    {
      i = a.c();
      setCurrentTab(i);
      a(i);
    }
    a();
    setOnTabChangedListener(c);
  }
  
  public void a(MainViewPager paramMainViewPager)
  {
    a = paramMainViewPager;
    a.b(g);
  }
  
  public void a(boolean paramBoolean)
  {
    if (d != paramBoolean)
    {
      d = paramBoolean;
      a();
    }
  }
  
  public void onTouchModeChanged(boolean paramBoolean) {}
  
  public void setup()
  {
    super.setup();
    e = getTabWidget();
    b = ((hpu)ilh.b(getContext()).a(hpu.class));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.util.TabHostEx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */