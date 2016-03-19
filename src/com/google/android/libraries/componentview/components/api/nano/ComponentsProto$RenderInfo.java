package com.google.android.libraries.componentview.components.api.nano;

import lxz;
import lyb;

public final class ComponentsProto$RenderInfo
  extends lyb<RenderInfo>
{
  private int a = 0;
  private boolean b = false;
  private boolean c = false;
  private boolean d = false;
  
  public ComponentsProto$RenderInfo()
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
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if ((a & 0x1) != 0) {
      i = j + (lxz.f(1) + 1);
    }
    j = i;
    if ((a & 0x2) != 0) {
      j = i + (lxz.f(2) + 1);
    }
    i = j;
    if ((a & 0x4) != 0) {
      i = j + (lxz.f(3) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.api.nano.ComponentsProto.RenderInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */