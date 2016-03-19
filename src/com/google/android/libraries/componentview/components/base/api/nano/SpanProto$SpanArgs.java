package com.google.android.libraries.componentview.components.base.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;

public final class SpanProto$SpanArgs
  extends lyb<SpanArgs>
{
  public static final lyc<ComponentsProto.Component, SpanArgs> a = lyc.a(SpanArgs.class, 867122650L);
  private static final SpanArgs[] e = new SpanArgs[0];
  public AttributesProto.Color b = null;
  public ComponentsProto.Component[] c = ComponentsProto.Component.d();
  public ActionProto.Action d = null;
  private int f = 0;
  private String g = "";
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  private boolean k = false;
  private float l = 0.6F;
  private boolean m = false;
  private String n = "";
  private float o = 0.0F;
  private float p = 0.0F;
  private boolean q = false;
  private boolean r = false;
  private String s = "";
  private float t = 0.0F;
  
  public SpanProto$SpanArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((f & 0x1) != 0) {
      paramlxz.a(1, g);
    }
    if ((f & 0x2) != 0) {
      paramlxz.a(2, h);
    }
    if ((f & 0x4) != 0) {
      paramlxz.a(3, i);
    }
    if ((f & 0x8) != 0) {
      paramlxz.a(4, j);
    }
    if ((f & 0x10) != 0) {
      paramlxz.a(5, k);
    }
    if ((f & 0x20) != 0) {
      paramlxz.a(6, l);
    }
    if (b != null) {
      paramlxz.b(7, b);
    }
    if ((f & 0x40) != 0) {
      paramlxz.a(8, m);
    }
    if ((f & 0x80) != 0) {
      paramlxz.a(9, n);
    }
    if ((f & 0x100) != 0) {
      paramlxz.a(10, o);
    }
    if ((f & 0x200) != 0) {
      paramlxz.a(11, p);
    }
    if ((f & 0x400) != 0) {
      paramlxz.a(13, q);
    }
    if ((f & 0x800) != 0) {
      paramlxz.a(14, r);
    }
    if ((c != null) && (c.length > 0))
    {
      int i1 = 0;
      while (i1 < c.length)
      {
        ComponentsProto.Component localComponent = c[i1];
        if (localComponent != null) {
          paramlxz.b(15, localComponent);
        }
        i1 += 1;
      }
    }
    if ((f & 0x1000) != 0) {
      paramlxz.a(16, s);
    }
    if ((f & 0x2000) != 0) {
      paramlxz.a(17, t);
    }
    if (d != null) {
      paramlxz.b(18, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if ((f & 0x1) != 0) {
      i1 = i2 + lxz.b(1, g);
    }
    i2 = i1;
    if ((f & 0x2) != 0) {
      i2 = i1 + (lxz.f(2) + 1);
    }
    i1 = i2;
    if ((f & 0x4) != 0) {
      i1 = i2 + (lxz.f(3) + 1);
    }
    i2 = i1;
    if ((f & 0x8) != 0) {
      i2 = i1 + (lxz.f(4) + 1);
    }
    i1 = i2;
    if ((f & 0x10) != 0) {
      i1 = i2 + (lxz.f(5) + 1);
    }
    i2 = i1;
    if ((f & 0x20) != 0) {
      i2 = i1 + (lxz.f(6) + 4);
    }
    i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.d(7, b);
    }
    i2 = i1;
    if ((f & 0x40) != 0) {
      i2 = i1 + (lxz.f(8) + 1);
    }
    i1 = i2;
    if ((f & 0x80) != 0) {
      i1 = i2 + lxz.b(9, n);
    }
    i2 = i1;
    if ((f & 0x100) != 0) {
      i2 = i1 + (lxz.f(10) + 4);
    }
    i1 = i2;
    if ((f & 0x200) != 0) {
      i1 = i2 + (lxz.f(11) + 4);
    }
    i2 = i1;
    if ((f & 0x400) != 0) {
      i2 = i1 + (lxz.f(13) + 1);
    }
    i1 = i2;
    if ((f & 0x800) != 0) {
      i1 = i2 + (lxz.f(14) + 1);
    }
    i2 = i1;
    if (c != null)
    {
      i2 = i1;
      if (c.length > 0)
      {
        i2 = 0;
        while (i2 < c.length)
        {
          ComponentsProto.Component localComponent = c[i2];
          int i3 = i1;
          if (localComponent != null) {
            i3 = i1 + lxz.d(15, localComponent);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if ((f & 0x1000) != 0) {
      i1 = i2 + lxz.b(16, s);
    }
    i2 = i1;
    if ((f & 0x2000) != 0) {
      i2 = i1 + (lxz.f(17) + 4);
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.d(18, d);
    }
    return i1;
  }
  
  public boolean d()
  {
    return h;
  }
  
  public boolean e()
  {
    return i;
  }
  
  public boolean f()
  {
    return m;
  }
  
  public String g()
  {
    return n;
  }
  
  public float h()
  {
    return o;
  }
  
  public float i()
  {
    return p;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.SpanProto.SpanArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */