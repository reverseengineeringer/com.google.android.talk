package com.google.android.libraries.componentview.components.api.nano;

import lxz;
import lyb;
import lyf;

public final class ComponentsProto$Component
  extends lyb<Component>
{
  private static volatile Component[] d;
  public Component a = null;
  public ComponentsProto.LogInfo b = null;
  public ComponentsProto.RenderInfo c = null;
  private int e = 0;
  private String f = "";
  private String g = "";
  
  public ComponentsProto$Component()
  {
    eD = null;
    eE = -1;
  }
  
  public static Component[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new Component[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if ((e & 0x1) != 0) {
      paramlxz.a(1, f);
    }
    if ((e & 0x2) != 0) {
      paramlxz.a(2, g);
    }
    if (a != null) {
      paramlxz.b(4, a);
    }
    if (b != null) {
      paramlxz.b(6, b);
    }
    if (c != null) {
      paramlxz.b(7, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if ((e & 0x1) != 0) {
      i = j + lxz.b(1, f);
    }
    j = i;
    if ((e & 0x2) != 0) {
      j = i + lxz.b(2, g);
    }
    i = j;
    if (a != null) {
      i = j + lxz.d(4, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(6, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(7, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */