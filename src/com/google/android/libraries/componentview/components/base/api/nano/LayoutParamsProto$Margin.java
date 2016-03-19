package com.google.android.libraries.componentview.components.base.api.nano;

import lxz;
import lyb;

public final class LayoutParamsProto$Margin
  extends lyb<Margin>
{
  private int a = 0;
  private int b = 0;
  private int c = 0;
  private int d = 0;
  private int e = 0;
  
  public LayoutParamsProto$Margin()
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
      i = j + lxz.e(1, b);
    }
    j = i;
    if ((a & 0x2) != 0) {
      j = i + lxz.e(2, c);
    }
    i = j;
    if ((a & 0x4) != 0) {
      i = j + lxz.e(3, d);
    }
    j = i;
    if ((a & 0x8) != 0) {
      j = i + lxz.e(4, e);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.LayoutParamsProto.Margin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */