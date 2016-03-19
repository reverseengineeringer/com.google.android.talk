package com.google.android.libraries.componentview.components.base.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;

public final class TextViewProto$TextViewArgs
  extends lyb<TextViewArgs>
{
  public static final lyc<ComponentsProto.Component, TextViewArgs> a = lyc.a(TextViewArgs.class, 867122626L);
  private static final TextViewArgs[] e = new TextViewArgs[0];
  public AttributesProto.Color b = null;
  public AttributesProto.ViewArgs c = null;
  public ComponentsProto.Component[] d = ComponentsProto.Component.d();
  private int f = 0;
  private String g = "";
  private String h = "";
  private float i = 0.0F;
  private int j = 0;
  private int k = 0;
  private float l = 0.0F;
  private float m = 1.0F;
  private boolean n = false;
  private boolean o = false;
  private boolean p = false;
  private boolean q = true;
  private boolean r = false;
  
  public TextViewProto$TextViewArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((f & 0x1) != 0) {
      paramlxz.a(1, g);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if ((f & 0x2) != 0) {
      paramlxz.a(3, h);
    }
    if ((f & 0x4) != 0) {
      paramlxz.a(4, i);
    }
    if ((f & 0x8) != 0) {
      paramlxz.c(5, j);
    }
    if ((f & 0x10) != 0) {
      paramlxz.a(6, k);
    }
    if (c != null) {
      paramlxz.b(7, c);
    }
    if ((d != null) && (d.length > 0))
    {
      int i1 = 0;
      while (i1 < d.length)
      {
        ComponentsProto.Component localComponent = d[i1];
        if (localComponent != null) {
          paramlxz.b(8, localComponent);
        }
        i1 += 1;
      }
    }
    if ((f & 0x20) != 0) {
      paramlxz.a(9, l);
    }
    if ((f & 0x40) != 0) {
      paramlxz.a(10, m);
    }
    if ((f & 0x80) != 0) {
      paramlxz.a(11, n);
    }
    if ((f & 0x100) != 0) {
      paramlxz.a(12, o);
    }
    if ((f & 0x200) != 0) {
      paramlxz.a(13, p);
    }
    if ((f & 0x400) != 0) {
      paramlxz.a(14, q);
    }
    if ((f & 0x800) != 0) {
      paramlxz.a(15, r);
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
    if (b != null) {
      i2 = i1 + lxz.d(2, b);
    }
    i1 = i2;
    if ((f & 0x2) != 0) {
      i1 = i2 + lxz.b(3, h);
    }
    i2 = i1;
    if ((f & 0x4) != 0) {
      i2 = i1 + (lxz.f(4) + 4);
    }
    i1 = i2;
    if ((f & 0x8) != 0) {
      i1 = i2 + lxz.f(5, j);
    }
    i2 = i1;
    if ((f & 0x10) != 0) {
      i2 = i1 + lxz.e(6, k);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.d(7, c);
    }
    i2 = i1;
    if (d != null)
    {
      i2 = i1;
      if (d.length > 0)
      {
        i2 = 0;
        while (i2 < d.length)
        {
          ComponentsProto.Component localComponent = d[i2];
          int i3 = i1;
          if (localComponent != null) {
            i3 = i1 + lxz.d(8, localComponent);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if ((f & 0x20) != 0) {
      i1 = i2 + (lxz.f(9) + 4);
    }
    i2 = i1;
    if ((f & 0x40) != 0) {
      i2 = i1 + (lxz.f(10) + 4);
    }
    i1 = i2;
    if ((f & 0x80) != 0) {
      i1 = i2 + (lxz.f(11) + 1);
    }
    i2 = i1;
    if ((f & 0x100) != 0) {
      i2 = i1 + (lxz.f(12) + 1);
    }
    i1 = i2;
    if ((f & 0x200) != 0) {
      i1 = i2 + (lxz.f(13) + 1);
    }
    i2 = i1;
    if ((f & 0x400) != 0) {
      i2 = i1 + (lxz.f(14) + 1);
    }
    i1 = i2;
    if ((f & 0x800) != 0) {
      i1 = i2 + (lxz.f(15) + 1);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.TextViewProto.TextViewArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */