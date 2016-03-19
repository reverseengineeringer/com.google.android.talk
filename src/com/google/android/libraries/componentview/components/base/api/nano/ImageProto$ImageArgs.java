package com.google.android.libraries.componentview.components.base.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;
import lyo;

public final class ImageProto$ImageArgs
  extends lyb<ImageArgs>
{
  public static final lyc<ComponentsProto.Component, ImageArgs> a = lyc.a(ImageArgs.class, 867122706L);
  private static final ImageArgs[] c = new ImageArgs[0];
  public AttributesProto.ViewArgs b = null;
  private int d = 0;
  private String e = "";
  private byte[] f = lyo.h;
  private int g = 2;
  private int h = 4;
  private boolean i = false;
  
  public ImageProto$ImageArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((d & 0x1) != 0) {
      paramlxz.a(1, e);
    }
    if ((d & 0x4) != 0) {
      paramlxz.a(4, g);
    }
    if (b != null) {
      paramlxz.b(5, b);
    }
    if ((d & 0x8) != 0) {
      paramlxz.a(6, h);
    }
    if ((d & 0x10) != 0) {
      paramlxz.a(7, i);
    }
    if ((d & 0x2) != 0) {
      paramlxz.a(8, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int j = k;
    if ((d & 0x1) != 0) {
      j = k + lxz.b(1, e);
    }
    k = j;
    if ((d & 0x4) != 0) {
      k = j + lxz.e(4, g);
    }
    j = k;
    if (b != null) {
      j = k + lxz.d(5, b);
    }
    k = j;
    if ((d & 0x8) != 0) {
      k = j + lxz.e(6, h);
    }
    j = k;
    if ((d & 0x10) != 0) {
      j = k + (lxz.f(7) + 1);
    }
    k = j;
    if ((d & 0x2) != 0) {
      k = j + lxz.b(8, f);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.ImageProto.ImageArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */