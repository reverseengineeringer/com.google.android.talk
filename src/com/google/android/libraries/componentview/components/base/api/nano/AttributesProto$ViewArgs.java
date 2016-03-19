package com.google.android.libraries.componentview.components.base.api.nano;

import lxz;
import lyb;

public final class AttributesProto$ViewArgs
  extends lyb<ViewArgs>
{
  public AttributesProto.Color a = null;
  public AttributesProto.Radius b = null;
  public AttributesProto.Padding c = null;
  private int d = 0;
  private float e = 0.0F;
  private float f = 0.0F;
  private String g = "";
  private boolean h = false;
  private int i = 0;
  
  public AttributesProto$ViewArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if ((d & 0x1) != 0) {
      paramlxz.a(2, e);
    }
    if ((d & 0x2) != 0) {
      paramlxz.a(3, f);
    }
    if (c != null) {
      paramlxz.b(4, c);
    }
    if ((d & 0x4) != 0) {
      paramlxz.a(5, g);
    }
    if ((d & 0x8) != 0) {
      paramlxz.a(6, h);
    }
    if (b != null) {
      paramlxz.b(7, b);
    }
    if ((d & 0x10) != 0) {
      paramlxz.a(8, i);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int j = k;
    if (a != null) {
      j = k + lxz.d(1, a);
    }
    k = j;
    if ((d & 0x1) != 0) {
      k = j + (lxz.f(2) + 4);
    }
    j = k;
    if ((d & 0x2) != 0) {
      j = k + (lxz.f(3) + 4);
    }
    k = j;
    if (c != null) {
      k = j + lxz.d(4, c);
    }
    j = k;
    if ((d & 0x4) != 0) {
      j = k + lxz.b(5, g);
    }
    k = j;
    if ((d & 0x8) != 0) {
      k = j + (lxz.f(6) + 1);
    }
    j = k;
    if (b != null) {
      j = k + lxz.d(7, b);
    }
    k = j;
    if ((d & 0x10) != 0) {
      k = j + lxz.e(8, i);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.AttributesProto.ViewArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */