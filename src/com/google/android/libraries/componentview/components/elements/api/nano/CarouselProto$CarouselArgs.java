package com.google.android.libraries.componentview.components.elements.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;

public final class CarouselProto$CarouselArgs
  extends lyb<CarouselArgs>
{
  public static final lyc<ComponentsProto.Component, CarouselArgs> a = lyc.a(CarouselArgs.class, 867122602L);
  private static final CarouselArgs[] c = new CarouselArgs[0];
  public ComponentsProto.Component[] b = ComponentsProto.Component.d();
  private int d = 0;
  private int e = 0;
  
  public CarouselProto$CarouselArgs()
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
    if ((d & 0x1) != 0) {
      paramlxz.a(2, e);
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
    if ((d & 0x1) != 0) {
      i = j + lxz.e(2, e);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.api.nano.CarouselProto.CarouselArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */