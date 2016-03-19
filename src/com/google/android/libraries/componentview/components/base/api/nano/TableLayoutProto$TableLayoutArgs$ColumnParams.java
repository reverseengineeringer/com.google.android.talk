package com.google.android.libraries.componentview.components.base.api.nano;

import lxz;
import lyb;
import lyf;

public final class TableLayoutProto$TableLayoutArgs$ColumnParams
  extends lyb<ColumnParams>
{
  private static volatile ColumnParams[] a;
  private int b = 0;
  private int c = 0;
  private boolean d = false;
  private boolean e = false;
  private boolean f = false;
  
  public TableLayoutProto$TableLayoutArgs$ColumnParams()
  {
    eD = null;
    eE = -1;
  }
  
  public static ColumnParams[] d()
  {
    if (a == null) {}
    synchronized (lyf.a)
    {
      if (a == null) {
        a = new ColumnParams[0];
      }
      return a;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if ((b & 0x1) != 0) {
      paramlxz.a(1, c);
    }
    if ((b & 0x2) != 0) {
      paramlxz.a(2, d);
    }
    if ((b & 0x4) != 0) {
      paramlxz.a(3, e);
    }
    if ((b & 0x8) != 0) {
      paramlxz.a(4, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if ((b & 0x1) != 0) {
      i = j + lxz.e(1, c);
    }
    j = i;
    if ((b & 0x2) != 0) {
      j = i + (lxz.f(2) + 1);
    }
    i = j;
    if ((b & 0x4) != 0) {
      i = j + (lxz.f(3) + 1);
    }
    j = i;
    if ((b & 0x8) != 0) {
      j = i + (lxz.f(4) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.TableLayoutProto.TableLayoutArgs.ColumnParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */