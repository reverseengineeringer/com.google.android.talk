package com.google.android.libraries.componentview.components.elements.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import com.google.android.libraries.componentview.components.base.api.nano.AttributesProto.Dimension;
import lxz;
import lyb;
import lyc;

public final class CardLayoutParamsProto$CardLayoutParamsArgs
  extends lyb<CardLayoutParamsArgs>
{
  public static final lyc<ComponentsProto.Component, CardLayoutParamsArgs> a = lyc.a(CardLayoutParamsArgs.class, 867122610L);
  private static final CardLayoutParamsArgs[] e = new CardLayoutParamsArgs[0];
  public ComponentsProto.Component b = null;
  public AttributesProto.Dimension c = null;
  public AttributesProto.Dimension d = null;
  private int f = 0;
  private boolean g = false;
  private int h = 0;
  
  public CardLayoutParamsProto$CardLayoutParamsArgs()
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
    if ((f & 0x2) != 0) {
      paramlxz.a(5, h);
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
      j = i + (lxz.f(4) + 1);
    }
    i = j;
    if ((f & 0x2) != 0) {
      i = j + lxz.e(5, h);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.api.nano.CardLayoutParamsProto.CardLayoutParamsArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */