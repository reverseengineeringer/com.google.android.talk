package com.google.android.libraries.componentview.components.elements.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import com.google.android.libraries.componentview.components.base.api.nano.AttributesProto.ViewArgs;
import lxz;
import lyb;
import lyc;
import msw;

public final class CrushinatorImageArgsProto$CrushinatorImageArgs
  extends lyb<CrushinatorImageArgs>
{
  public static final lyc<ComponentsProto.Component, CrushinatorImageArgs> a = lyc.a(CrushinatorImageArgs.class, 884039362L);
  private static final CrushinatorImageArgs[] d = new CrushinatorImageArgs[0];
  public msw b = null;
  public AttributesProto.ViewArgs c = null;
  private int e = 0;
  private String f = "";
  private boolean g = false;
  private int h = 0;
  private int i = 0;
  
  public CrushinatorImageArgsProto$CrushinatorImageArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((e & 0x1) != 0) {
      paramlxz.a(1, f);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if ((e & 0x2) != 0) {
      paramlxz.a(3, g);
    }
    if (c != null) {
      paramlxz.b(4, c);
    }
    if ((e & 0x4) != 0) {
      paramlxz.a(5, h);
    }
    if ((e & 0x8) != 0) {
      paramlxz.a(6, i);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int j = k;
    if ((e & 0x1) != 0) {
      j = k + lxz.b(1, f);
    }
    k = j;
    if (b != null) {
      k = j + lxz.d(2, b);
    }
    j = k;
    if ((e & 0x2) != 0) {
      j = k + (lxz.f(3) + 1);
    }
    k = j;
    if (c != null) {
      k = j + lxz.d(4, c);
    }
    j = k;
    if ((e & 0x4) != 0) {
      j = k + lxz.e(5, h);
    }
    k = j;
    if ((e & 0x8) != 0) {
      k = j + lxz.e(6, i);
    }
    return k;
  }
  
  public boolean d()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.api.nano.CrushinatorImageArgsProto.CrushinatorImageArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */