package com.google.android.libraries.componentview.components.elements.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import com.google.android.libraries.componentview.components.base.api.nano.AttributesProto.Color;
import com.google.android.libraries.componentview.components.base.api.nano.AttributesProto.ViewArgs;
import lxz;
import lyb;
import lyc;

public final class StarRatingProto$StarRatingArgs
  extends lyb<StarRatingArgs>
{
  public static final lyc<ComponentsProto.Component, StarRatingArgs> a = lyc.a(StarRatingArgs.class, 867122594L);
  private static final StarRatingArgs[] e = new StarRatingArgs[0];
  public AttributesProto.Color b = null;
  public AttributesProto.Color c = null;
  public AttributesProto.ViewArgs d = null;
  private int f = 0;
  private float g = 0.0F;
  
  public StarRatingProto$StarRatingArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if (c != null) {
      paramlxz.b(2, c);
    }
    if ((f & 0x1) != 0) {
      paramlxz.a(3, g);
    }
    if (d != null) {
      paramlxz.b(5, d);
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
    if (c != null) {
      j = i + lxz.d(2, c);
    }
    i = j;
    if ((f & 0x1) != 0) {
      i = j + (lxz.f(3) + 4);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(5, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.api.nano.StarRatingProto.StarRatingArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */