package com.google.android.apps.hangouts.hangout;

import aal;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import cfc;
import cgn;
import cgp;
import cgv;
import cgw;
import cin;
import hbs;
import hkx;
import ilh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class HangoutSelfMenu
  extends LinearLayout
{
  public final cfc a = cfc.a();
  public List<cgp> b;
  private boolean c;
  private final cgv d = new cgv(this);
  
  public HangoutSelfMenu(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a(cgn paramcgn, hkx paramhkx, cgw paramcgw)
  {
    removeAllViews();
    Object localObject = ilh.c(getContext(), cin.class);
    Collections.sort((List)localObject);
    b = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      List localList = ((cin)((Iterator)localObject).next()).a(getContext(), paramcgn, paramhkx, paramcgw);
      if (localList != null) {
        b.addAll(localList);
      }
    }
    paramcgn = b.iterator();
    while (paramcgn.hasNext()) {
      addView(((cgp)paramcgn.next()).a(LayoutInflater.from(getContext()), aal.fU, (ViewGroup)getParent()));
    }
    hbs.b("Expected condition to be false", c);
    a.a(d);
    setVisibility(0);
    c = true;
  }
  
  public boolean a()
  {
    return c;
  }
  
  public void b()
  {
    if (c)
    {
      setVisibility(8);
      a.b(d);
      c = false;
      b = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.HangoutSelfMenu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */