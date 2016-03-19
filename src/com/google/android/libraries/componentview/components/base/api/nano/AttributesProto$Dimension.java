package com.google.android.libraries.componentview.components.base.api.nano;

import lxz;
import lyb;

public final class AttributesProto$Dimension
  extends lyb<Dimension>
{
  private int a = 0;
  private float b = 0.0F;
  private int c = 0;
  
  public AttributesProto$Dimension()
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
      j = i + lxz.e(2, c);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.AttributesProto.Dimension
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */