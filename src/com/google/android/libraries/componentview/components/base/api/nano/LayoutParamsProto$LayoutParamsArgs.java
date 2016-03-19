package com.google.android.libraries.componentview.components.base.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;

public final class LayoutParamsProto$LayoutParamsArgs
  extends lyb<LayoutParamsArgs>
{
  public static final lyc<ComponentsProto.Component, LayoutParamsArgs> a = lyc.a(LayoutParamsArgs.class, 867122698L);
  private static final LayoutParamsArgs[] f = new LayoutParamsArgs[0];
  public ComponentsProto.Component b = null;
  public AttributesProto.Dimension c = null;
  public AttributesProto.Dimension d = null;
  public LayoutParamsProto.Margin e = null;
  
  public LayoutParamsProto$LayoutParamsArgs()
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
    if (e != null) {
      paramlxz.b(4, e);
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
    if (e != null) {
      j = i + lxz.d(4, e);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.LayoutParamsProto.LayoutParamsArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */