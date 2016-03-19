package com.google.android.apps.hangouts.hangout;

import aal;
import aen;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import cfc;
import cgm;
import cgn;
import cgw;
import chu;
import ciq;
import cir;
import cis;
import cit;
import ciu;
import cjk;
import cjm;
import hbs;
import hkq;
import hks;
import hku;
import hkx;
import it;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ParticipantTrayView
  extends LinearLayout
  implements cgm
{
  public chu a;
  public cgn b;
  public boolean c;
  public final FrameLayout d;
  private final hku e = new ciq(this);
  private final cfc f = cfc.a();
  private FocusedParticipantView g;
  private cjm h;
  private Handler i = new Handler();
  private it j;
  private final ArrayList<ciu> k = new ArrayList();
  private boolean l;
  private final ParticipantTrayView.HorizontalScrollNotifier m;
  private final LinearLayout n;
  private final LinearLayout o;
  
  public ParticipantTrayView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = LayoutInflater.from(paramContext).inflate(aal.fP, this, true);
    m = ((ParticipantTrayView.HorizontalScrollNotifier)paramAttributeSet.findViewById(aen.fT));
    n = ((LinearLayout)paramAttributeSet.findViewById(aen.eO));
    o = ((LinearLayout)paramAttributeSet.findViewById(aen.fF));
    d = ((FrameLayout)paramAttributeSet.findViewById(aen.fU));
    j = new it(paramContext, new cis(this));
  }
  
  ciu a(String paramString)
  {
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext())
    {
      ciu localciu = (ciu)localIterator.next();
      hkx localhkx = localciu.c();
      if (((paramString == null) && (localhkx.g())) || (paramString.equals(localhkx.a()))) {
        return localciu;
      }
    }
    return null;
  }
  
  public void a(int paramInt)
  {
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext()) {
      ((ciu)localIterator.next()).a(paramInt);
    }
  }
  
  public void a(View paramView)
  {
    int i1 = ((ViewGroup)paramView.getParent()).getLeft();
    int i2;
    int i3;
    int i4;
    if (paramView == d)
    {
      i2 = o.getLeft() + o.getWidth() + i1;
      i1 = d.getWidth() + i2;
      i3 = m.getScrollX();
      i4 = m.getWidth() + i3;
      if (i3 <= i2) {
        break label101;
      }
      m.smoothScrollTo(i2, 0);
    }
    label101:
    while (i1 <= i4)
    {
      return;
      i2 = paramView.getLeft() + i1;
      i1 += paramView.getRight();
      break;
    }
    m.smoothScrollTo(i1 - (i4 - i3), 0);
  }
  
  public void a(cgn paramcgn)
  {
    boolean bool2 = true;
    b = paramcgn;
    f.a(e);
    m.a(new cit(this));
    hbs.b("Expected condition to be false", l);
    l = true;
    Object localObject = f.f();
    paramcgn = null;
    if (localObject != null) {
      paramcgn = ((hks)localObject).n();
    }
    boolean bool1 = bool2;
    if (paramcgn != null)
    {
      bool1 = bool2;
      if (paramcgn.b()) {
        bool1 = false;
      }
    }
    a(new hkx().a("localParticipant").f().a(bool1));
    paramcgn = f.p().iterator();
    while (paramcgn.hasNext())
    {
      localObject = (hkx)paramcgn.next();
      if (!((hkx)localObject).g()) {
        a((hkx)localObject);
      }
    }
    hbs.a("Expected condition to be true", l);
    l = false;
    h();
  }
  
  void a(chu paramchu)
  {
    a = paramchu;
    l = false;
    if (Build.VERSION.SDK_INT < 19)
    {
      paramchu = (FrameLayout.LayoutParams)n.getLayoutParams();
      gravity = 3;
      n.setLayoutParams(paramchu);
    }
  }
  
  public void a(ciu paramciu)
  {
    paramciu.b();
    int i1 = 0;
    for (;;)
    {
      if (i1 < k.size())
      {
        if (k.get(i1) == paramciu) {
          k.remove(i1);
        }
      }
      else
      {
        o.removeView(paramciu);
        d.removeView(paramciu);
        h();
        return;
      }
      i1 += 1;
    }
  }
  
  void a(FocusedParticipantView paramFocusedParticipantView)
  {
    g = paramFocusedParticipantView;
  }
  
  public void a(hkx paramhkx)
  {
    hbs.b("Expected non-null", paramhkx);
    Object localObject = null;
    if (paramhkx.g())
    {
      hbs.a("Expected null", h);
      h = new cjm(a, paramhkx, this, g);
      localObject = h;
      d.addView((View)localObject);
    }
    for (;;)
    {
      if (localObject != null)
      {
        k.add(localObject);
        ((ciu)localObject).a(b);
      }
      if (!l) {
        h();
      }
      return;
      if (a(paramhkx.a()) == null)
      {
        localObject = new cjk(a, paramhkx, this, g);
        o.addView((View)localObject);
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    int i2 = getContext().getResources().getDimensionPixelSize(aal.ed);
    ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
    if ((localLayoutParams != null) && (height >= 0)) {}
    for (int i1 = height; paramBoolean; i1 = getContext().getResources().getDimensionPixelSize(aal.ef))
    {
      startAnimation(a.a(-(i1 + i2), i2, this, true));
      c = false;
      return;
    }
    startAnimation(a.a(i2, -(i1 + i2), this, false));
  }
  
  public void b()
  {
    i.postDelayed(new cir(this), 500L);
  }
  
  public void c()
  {
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext()) {
      ((ciu)localIterator.next()).i();
    }
  }
  
  ciu d()
  {
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext())
    {
      ciu localciu = (ciu)localIterator.next();
      if (localciu != h) {
        return localciu;
      }
    }
    return h;
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    super.dispatchTouchEvent(paramMotionEvent);
    return j.a(paramMotionEvent);
  }
  
  cjm e()
  {
    return h;
  }
  
  public void f()
  {
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext()) {
      ((ciu)localIterator.next()).e();
    }
  }
  
  public void g()
  {
    h();
  }
  
  public void h()
  {
    cgw localcgw = f.r();
    if ((k.size() <= 1) || ((localcgw != null) && (localcgw.K())))
    {
      o.setVisibility(8);
      d.setVisibility(8);
    }
    for (;;)
    {
      if (o.getVisibility() == 8) {
        f();
      }
      return;
      if ((k.size() == 2) && (!h.isFocused()))
      {
        o.setVisibility(8);
        d.setVisibility(0);
      }
      else
      {
        o.setVisibility(0);
        d.setVisibility(0);
      }
    }
  }
  
  public boolean i()
  {
    return c;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext()) {
      ((ciu)localIterator.next()).onConfigurationChanged(paramConfiguration);
    }
  }
  
  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    f();
  }
  
  public void r_()
  {
    m.a(null);
    f.b(e);
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext()) {
      ((ciu)localIterator.next()).r_();
    }
    k.clear();
    h = null;
    o.removeAllViews();
    d.removeAllViews();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.ParticipantTrayView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */