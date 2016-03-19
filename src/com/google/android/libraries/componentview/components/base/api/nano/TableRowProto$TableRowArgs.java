package com.google.android.libraries.componentview.components.base.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;

public final class TableRowProto$TableRowArgs
  extends lyb<TableRowArgs>
{
  public static final lyc<ComponentsProto.Component, TableRowArgs> a = lyc.a(TableRowArgs.class, 867122634L);
  private static final TableRowArgs[] d = new TableRowArgs[0];
  public AttributesProto.ViewArgs b = null;
  public ComponentsProto.Component[] c = ComponentsProto.Component.d();
  
  public TableRowProto$TableRowArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        ComponentsProto.Component localComponent = c[i];
        if (localComponent != null) {
          paramlxz.b(2, localComponent);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.d(1, b);
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        j = 0;
        while (j < c.length)
        {
          ComponentsProto.Component localComponent = c[j];
          int k = i;
          if (localComponent != null) {
            k = i + lxz.d(2, localComponent);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.TableRowProto.TableRowArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */