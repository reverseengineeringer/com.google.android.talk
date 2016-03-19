package com.google.android.libraries.componentview.components.base.api.nano;

import lxz;
import lyb;

public final class AttributesProto$Radius
  extends lyb<Radius>
{
  private int a = 0;
  private float b = 0.0F;
  private float c = 0.0F;
  private float d = 0.0F;
  private float e = 0.0F;
  
  public AttributesProto$Radius()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((a & 0x1) != 0) {
      paramlxz.a(1, b);
    }
    if ((a & 0x2) != 0) {
      paramlxz.a(2, c);
    }
    if ((a & 0x4) != 0) {
      paramlxz.a(3, d);
    }
    if ((a & 0x8) != 0) {
      paramlxz.a(4, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if ((a & 0x1) != 0) {
      i = j + (lxz.f(1) + 4);
    }
    j = i;
    if ((a & 0x2) != 0) {
      j = i + (lxz.f(2) + 4);
    }
    i = j;
    if ((a & 0x4) != 0) {
      i = j + (lxz.f(3) + 4);
    }
    j = i;
    if ((a & 0x8) != 0) {
      j = i + (lxz.f(4) + 4);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.AttributesProto.Radius
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */