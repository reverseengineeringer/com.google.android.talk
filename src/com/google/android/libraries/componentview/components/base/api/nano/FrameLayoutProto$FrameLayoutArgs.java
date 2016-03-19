package com.google.android.libraries.componentview.components.base.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;

public final class FrameLayoutProto$FrameLayoutArgs
  extends lyb<FrameLayoutArgs>
{
  public static final lyc<ComponentsProto.Component, FrameLayoutArgs> a = lyc.a(FrameLayoutArgs.class, 872779090L);
  private static final FrameLayoutArgs[] e = new FrameLayoutArgs[0];
  public ComponentsProto.Component[] b = ComponentsProto.Component.d();
  public AttributesProto.ViewArgs c = null;
  public boolean d = false;
  
  public FrameLayoutProto$FrameLayoutArgs()
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
    if (d) {
      paramlxz.a(3, d);
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
    if (d) {
      j = i + (lxz.f(3) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.FrameLayoutProto.FrameLayoutArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */