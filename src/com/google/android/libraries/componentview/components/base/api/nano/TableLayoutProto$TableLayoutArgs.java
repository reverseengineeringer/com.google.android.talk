package com.google.android.libraries.componentview.components.base.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;
import lyi;

public final class TableLayoutProto$TableLayoutArgs
  extends lyb<TableLayoutArgs>
{
  public static final lyc<ComponentsProto.Component, TableLayoutArgs> a = lyc.a(TableLayoutArgs.class, 867122642L);
  private static final TableLayoutArgs[] e = new TableLayoutArgs[0];
  public AttributesProto.ViewArgs b = null;
  public ComponentsProto.Component[] c = ComponentsProto.Component.d();
  public TableLayoutProto.TableLayoutArgs.ColumnParams[] d = TableLayoutProto.TableLayoutArgs.ColumnParams.d();
  private int f = 0;
  private boolean g = false;
  private boolean h = false;
  
  public TableLayoutProto$TableLayoutArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (b != null) {
      paramlxz.b(1, b);
    }
    int i;
    Object localObject;
    if ((c != null) && (c.length > 0))
    {
      i = 0;
      while (i < c.length)
      {
        localObject = c[i];
        if (localObject != null) {
          paramlxz.b(2, (lyi)localObject);
        }
        i += 1;
      }
    }
    if ((d != null) && (d.length > 0))
    {
      i = j;
      while (i < d.length)
      {
        localObject = d[i];
        if (localObject != null) {
          paramlxz.b(3, (lyi)localObject);
        }
        i += 1;
      }
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
    int m = 0;
    int i = super.b();
    int j = i;
    if (b != null) {
      j = i + lxz.d(1, b);
    }
    i = j;
    Object localObject;
    int k;
    if (c != null)
    {
      i = j;
      if (c.length > 0)
      {
        i = j;
        j = 0;
        while (j < c.length)
        {
          localObject = c[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(2, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    j = i;
    if (d != null)
    {
      j = i;
      if (d.length > 0)
      {
        k = m;
        for (;;)
        {
          j = i;
          if (k >= d.length) {
            break;
          }
          localObject = d[k];
          j = i;
          if (localObject != null) {
            j = i + lxz.d(3, (lyi)localObject);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if ((f & 0x1) != 0) {
      i = j + (lxz.f(4) + 1);
    }
    j = i;
    if ((f & 0x2) != 0) {
      j = i + (lxz.f(5) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.TableLayoutProto.TableLayoutArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */