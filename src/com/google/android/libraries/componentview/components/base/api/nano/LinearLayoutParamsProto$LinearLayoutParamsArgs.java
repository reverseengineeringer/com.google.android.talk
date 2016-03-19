package com.google.android.libraries.componentview.components.base.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;

public final class LinearLayoutParamsProto$LinearLayoutParamsArgs
  extends lyb<LinearLayoutParamsArgs>
{
  public static final lyc<ComponentsProto.Component, LinearLayoutParamsArgs> a = lyc.a(LinearLayoutParamsArgs.class, 867122682L);
  private static final LinearLayoutParamsArgs[] e = new LinearLayoutParamsArgs[0];
  public ComponentsProto.Component b = null;
  public AttributesProto.Dimension c = null;
  public AttributesProto.Dimension d = null;
  private int f = 0;
  private float g = 0.0F;
  
  public LinearLayoutParamsProto$LinearLayoutParamsArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if (c != null) {
      paramlxz.b(2, c);
    }
    if (d != null) {
      paramlxz.b(3, d);
    }
    if ((f & 0x1) != 0) {
      paramlxz.a(4, g);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.d(1, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(2, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(3, d);
    }
    j = i;
    if ((f & 0x1) != 0) {
      j = i + (lxz.f(4) + 4);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.LinearLayoutParamsProto.LinearLayoutParamsArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */