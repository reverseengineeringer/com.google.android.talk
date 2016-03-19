package com.google.android.apps.hangouts.hangout;

import aal;
import aen;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Chronometer;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import bfd;
import bfq;
import cfc;
import cfy;
import cfz;
import cga;
import cgb;
import cgm;
import cgn;
import cgw;
import chb;
import chu;
import ciu;
import cjh;
import cjk;
import cjm;
import cnn;
import ezi;
import ezm;
import hjq;
import hku;
import hkx;
import ilh;
import imx;
import java.util.Iterator;
import java.util.List;

public final class FocusedParticipantView
  extends FrameLayout
  implements cgm
{
  private static final boolean f = false;
  public chu a;
  public boolean b = true;
  public hkx c;
  public cnn d;
  private final hku e = new cfz(this);
  private int g = 1;
  private final cfc h = cfc.a();
  private cgn i;
  private ParticipantTrayView j;
  private ciu k;
  private final View l;
  private final ImageView m;
  private final Chronometer n;
  private final View o;
  private final TextView p;
  private final View q;
  private boolean r = false;
  
  static
  {
    imx localimx = ezi.g;
  }
  
  public FocusedParticipantView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = LayoutInflater.from(paramContext).inflate(aal.fL, this, true);
    m = ((ImageView)paramAttributeSet.findViewById(aen.cn));
    l = paramAttributeSet.findViewById(aen.cl);
    n = ((Chronometer)paramAttributeSet.findViewById(aen.aX));
    o = paramAttributeSet.findViewById(aen.fd);
    p = ((TextView)paramAttributeSet.findViewById(aen.br));
    q = paramAttributeSet.findViewById(aen.ha);
    l.setVisibility(0);
    d = ((cnn)ilh.b(paramContext, cnn.class));
    if (d != null)
    {
      d.a(paramContext, (ViewGroup)paramAttributeSet.findViewById(aen.cm));
      d.b(0);
      m.bringToFront();
    }
  }
  
  private static String b(int paramInt)
  {
    if (paramInt == 2) {
      return "VIDEO_FRAME";
    }
    return "AVATAR_BITMAP";
  }
  
  private void c(int paramInt)
  {
    int i1 = 0;
    if (g != paramInt)
    {
      ezi.a("Babel_calls", "FocusedParticipantView: switch from mode %s to mode %s", new Object[] { b(g), b(paramInt) });
      g = paramInt;
      paramInt = i1;
      if (g == 2) {
        paramInt = 4;
      }
      l.setVisibility(paramInt);
      if (d != null) {
        d.b(paramInt);
      }
    }
  }
  
  private void f()
  {
    setContentDescription(a.a(getContext()));
  }
  
  private void g()
  {
    if ((i != null) && (i.n() != null)) {
      i.n().a((ViewGroup)findViewById(aen.cE));
    }
  }
  
  private void h()
  {
    Iterator localIterator = ilh.c(getContext(), cfy.class).iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
  }
  
  public void a(int paramInt)
  {
    g();
  }
  
  public void a(cgn paramcgn)
  {
    i = paramcgn;
    g();
    h.a(e);
    setOnClickListener(new cga(this));
    if (f) {
      setOnLongClickListener(new cgb(this));
    }
    f();
  }
  
  void a(chu paramchu, ParticipantTrayView paramParticipantTrayView)
  {
    j = paramParticipantTrayView;
    a = paramchu;
    h();
    f();
  }
  
  public void a(hkx paramhkx)
  {
    ezi.a("Babel_calls", "Focused participant changed to %s", new Object[] { paramhkx });
    ciu localciu = k;
    c = paramhkx;
    if (c == null) {}
    for (k = j.d();; k = j.a(c.a()))
    {
      if ((h.t()) && ((k instanceof cjm)))
      {
        c = null;
        k = null;
      }
      if (k == localciu) {
        break;
      }
      c();
      b();
      return;
    }
    h();
  }
  
  public void a(String paramString)
  {
    if ((c != null) && (c.a().equals(paramString))) {
      b();
    }
  }
  
  public void b()
  {
    Bitmap localBitmap = bfq.e();
    ImageView localImageView = m;
    if (k != null) {
      localBitmap = k.k();
    }
    localImageView.setImageBitmap(localBitmap);
    h();
    if (d != null) {
      d.a(0);
    }
  }
  
  public void c()
  {
    cgw localcgw;
    chb localchb;
    if ((h.t()) || ((c != null) && (c.l())))
    {
      c(1);
      if ((c == null) || (k == null)) {
        return;
      }
      if (c.i() > 0L)
      {
        n.setVisibility(0);
        if ((r) || (c == null) || (k == null))
        {
          localcgw = h.r();
          if (!(k instanceof cjk)) {
            break label383;
          }
          cjh localcjh = ((cjk)k).o();
          if ((localcjh == null) || (localcgw == null)) {
            break label383;
          }
          Iterator localIterator = localcgw.T().iterator();
          String str;
          do
          {
            if (!localIterator.hasNext()) {
              break;
            }
            localchb = (chb)localIterator.next();
            str = ezm.g(localcjh.b());
          } while ((str == null) || (!str.equals(localchb.a())));
        }
      }
    }
    for (;;)
    {
      int i1;
      if ((localchb != null) && (localchb.b() != null))
      {
        p.setText(getResources().getString(StressMode.bv, new Object[] { localchb.b() }));
        p.setText(getResources().getString(StressMode.bw, new Object[] { localchb.b() }));
        p.setVisibility(0);
        i1 = 0;
        label263:
        if ((localcgw == null) || (!localcgw.l().R())) {
          break label352;
        }
        q.setVisibility(0);
        i1 = 0;
      }
      for (;;)
      {
        o.setVisibility(i1);
        return;
        n.setBase(c.i());
        n.start();
        r = true;
        break;
        n.setVisibility(8);
        break;
        p.setVisibility(8);
        i1 = 8;
        break label263;
        label352:
        q.setVisibility(8);
      }
      n.setVisibility(8);
      o.setVisibility(8);
      return;
      label383:
      localchb = null;
    }
  }
  
  public void d()
  {
    c(2);
  }
  
  public void e()
  {
    c(1);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void r_()
  {
    h.b(e);
    c = null;
    k = null;
    setOnClickListener(null);
    setOnLongClickListener(null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.FocusedParticipantView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */