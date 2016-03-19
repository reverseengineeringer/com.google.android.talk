package com.google.android.libraries.componentview.components.base.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;

public final class ImageButtonProto$ImageButtonArgs
  extends lyb<ImageButtonArgs>
{
  public static final lyc<ComponentsProto.Component, ImageButtonArgs> a = lyc.a(ImageButtonArgs.class, 866395754L);
  private static final ImageButtonArgs[] c = new ImageButtonArgs[0];
  public ImageProto.ImageArgs b = null;
  
  public ImageButtonProto$ImageButtonArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
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
    return i;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.ImageButtonProto.ImageButtonArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */