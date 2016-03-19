package com.google.android.libraries.componentview.components.base.api.nano;

import lxz;
import lyb;

public final class ActionProto$Action
  extends lyb<Action>
{
  private int a = 0;
  private String b = "";
  private String c = "";
  private boolean d = false;
  private long e = -1L;
  private int f = 0;
  private String g = "";
  
  public ActionProto$Action()
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
      paramlxz.b(4, e);
    }
    if ((a & 0x10) != 0) {
      paramlxz.a(5, f);
    }
    if ((a & 0x20) != 0) {
      paramlxz.a(6, g);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if ((a & 0x1) != 0) {
      i = j + lxz.b(1, b);
    }
    j = i;
    if ((a & 0x2) != 0) {
      j = i + lxz.b(2, c);
    }
    i = j;
    if ((a & 0x4) != 0) {
      i = j + (lxz.f(3) + 1);
    }
    j = i;
    if ((a & 0x8) != 0) {
      j = i + lxz.e(4, e);
    }
    i = j;
    if ((a & 0x10) != 0) {
      i = j + lxz.e(5, f);
    }
    j = i;
    if ((a & 0x20) != 0) {
      j = i + lxz.b(6, g);
    }
    return j;
  }
  
  public String d()
  {
    return b;
  }
  
  public boolean e()
  {
    return (a & 0x1) != 0;
  }
  
  public String f()
  {
    return c;
  }
  
  public long g()
  {
    return e;
  }
  
  public int h()
  {
    return f;
  }
  
  public String i()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.ActionProto.Action
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */