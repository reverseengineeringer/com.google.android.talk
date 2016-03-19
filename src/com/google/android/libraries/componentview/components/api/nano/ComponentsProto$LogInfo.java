package com.google.android.libraries.componentview.components.api.nano;

import kzl;
import lxz;
import lyb;

public final class ComponentsProto$LogInfo
  extends lyb<LogInfo>
{
  public kzl a = null;
  private int b = 0;
  private boolean c = false;
  private String d = "";
  private String e = "";
  private String f = "";
  
  public ComponentsProto$LogInfo()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if ((b & 0x1) != 0) {
      paramlxz.a(2, c);
    }
    if ((b & 0x2) != 0) {
      paramlxz.a(100, d);
    }
    if ((b & 0x4) != 0) {
      paramlxz.a(200, e);
    }
    if ((b & 0x8) != 0) {
      paramlxz.a(300, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if ((b & 0x1) != 0) {
      j = i + (lxz.f(2) + 1);
    }
    i = j;
    if ((b & 0x2) != 0) {
      i = j + lxz.b(100, d);
    }
    j = i;
    if ((b & 0x4) != 0) {
      j = i + lxz.b(200, e);
    }
    i = j;
    if ((b & 0x8) != 0) {
      i = j + lxz.b(300, f);
    }
    return i;
  }
  
  public boolean d()
  {
    return c;
  }
  
  public String e()
  {
    return d;
  }
  
  public String f()
  {
    return e;
  }
  
  public String g()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.api.nano.ComponentsProto.LogInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */