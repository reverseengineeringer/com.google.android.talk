package com.google.android.libraries.componentview.components.base.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;

public final class RelativeLayoutParamsProto$RelativeLayoutParamsArgs
  extends lyb<RelativeLayoutParamsArgs>
{
  public static final lyc<ComponentsProto.Component, RelativeLayoutParamsArgs> a = lyc.a(RelativeLayoutParamsArgs.class, 867122658L);
  private static final RelativeLayoutParamsArgs[] e = new RelativeLayoutParamsArgs[0];
  public ComponentsProto.Component b = null;
  public AttributesProto.Dimension c = null;
  public AttributesProto.Dimension d = null;
  private int f = 0;
  private String g = "";
  private String h = "";
  private String i = "";
  private String j = "";
  private String k = "";
  private boolean l = false;
  private boolean m = false;
  private boolean n = false;
  private boolean o = false;
  private boolean p = false;
  
  public RelativeLayoutParamsProto$RelativeLayoutParamsArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if ((f & 0x1) != 0) {
      paramlxz.a(2, g);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if ((f & 0x2) != 0) {
      paramlxz.a(5, h);
    }
    if ((f & 0x4) != 0) {
      paramlxz.a(6, i);
    }
    if ((f & 0x8) != 0) {
      paramlxz.a(7, j);
    }
    if ((f & 0x10) != 0) {
      paramlxz.a(8, k);
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
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.d(1, b);
    }
    i2 = i1;
    if ((f & 0x1) != 0) {
      i2 = i1 + lxz.b(2, g);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.d(3, c);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.d(4, d);
    }
    i1 = i2;
    if ((f & 0x2) != 0) {
      i1 = i2 + lxz.b(5, h);
    }
    i2 = i1;
    if ((f & 0x4) != 0) {
      i2 = i1 + lxz.b(6, i);
    }
    i1 = i2;
    if ((f & 0x8) != 0) {
      i1 = i2 + lxz.b(7, j);
    }
    i2 = i1;
    if ((f & 0x10) != 0) {
      i2 = i1 + lxz.b(8, k);
    }
    i1 = i2;
    if ((f & 0x20) != 0) {
      i1 = i2 + (lxz.f(9) + 1);
    }
    i2 = i1;
    if ((f & 0x40) != 0) {
      i2 = i1 + (lxz.f(10) + 1);
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
    return i1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.RelativeLayoutParamsProto.RelativeLayoutParamsArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */