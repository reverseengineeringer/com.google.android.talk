package com.google.android.libraries.componentview.components.base.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;

public final class RelativeLayoutProto$RelativeLayoutArgs
  extends lyb<RelativeLayoutArgs>
{
  public static final lyc<ComponentsProto.Component, RelativeLayoutArgs> a = lyc.a(RelativeLayoutArgs.class, 867122666L);
  private static final RelativeLayoutArgs[] d = new RelativeLayoutArgs[0];
  public ComponentsProto.Component[] b = ComponentsProto.Component.d();
  public AttributesProto.ViewArgs c = null;
  private int e = 0;
  private boolean f = true;
  
  public RelativeLayoutProto$RelativeLayoutArgs()
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
    if (c != null) {
      paramlxz.b(2, c);
    }
    if ((e & 0x1) != 0) {
      paramlxz.a(3, f);
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
    if (c != null) {
      i = j + lxz.d(2, c);
    }
    j = i;
    if ((e & 0x1) != 0) {
      j = i + (lxz.f(3) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.RelativeLayoutProto.RelativeLayoutArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */