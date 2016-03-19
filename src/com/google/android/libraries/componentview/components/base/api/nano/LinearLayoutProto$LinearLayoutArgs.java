package com.google.android.libraries.componentview.components.base.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;

public final class LinearLayoutProto$LinearLayoutArgs
  extends lyb<LinearLayoutArgs>
{
  public static final lyc<ComponentsProto.Component, LinearLayoutArgs> a = lyc.a(LinearLayoutArgs.class, 867122690L);
  private static final LinearLayoutArgs[] d = new LinearLayoutArgs[0];
  public ComponentsProto.Component[] b = ComponentsProto.Component.d();
  public AttributesProto.ViewArgs c = null;
  private int e = 0;
  private boolean f = false;
  private int g = 0;
  private boolean h = true;
  
  public LinearLayoutProto$LinearLayoutArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        ComponentsProto.Component localComponent = b[i];
        if (localComponent != null) {
          paramlxz.b(1, localComponent);
        }
        i += 1;
      }
    }
    if ((e & 0x1) != 0) {
      paramlxz.a(2, f);
    }
    if ((e & 0x2) != 0) {
      paramlxz.a(6, g);
    }
    if (c != null) {
      paramlxz.b(7, c);
    }
    if ((e & 0x4) != 0) {
      paramlxz.a(8, h);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= b.length) {
            break;
          }
          ComponentsProto.Component localComponent = b[k];
          j = i;
          if (localComponent != null) {
            j = i + lxz.d(1, localComponent);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if ((e & 0x1) != 0) {
      i = j + (lxz.f(2) + 1);
    }
    j = i;
    if ((e & 0x2) != 0) {
      j = i + lxz.e(6, g);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(7, c);
    }
    j = i;
    if ((e & 0x4) != 0) {
      j = i + (lxz.f(8) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.LinearLayoutProto.LinearLayoutArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */