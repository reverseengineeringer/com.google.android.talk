package com.google.android.libraries.componentview.components.base.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;

public final class LinkProto$LinkArgs
  extends lyb<LinkArgs>
{
  public static final lyc<ComponentsProto.Component, LinkArgs> a = lyc.a(LinkArgs.class, 867122674L);
  private static final LinkArgs[] d = new LinkArgs[0];
  public ComponentsProto.Component b = null;
  public ActionProto.Action c = null;
  private int e = 0;
  private boolean f = true;
  private String g = "";
  
  public LinkProto$LinkArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((e & 0x2) != 0) {
      paramlxz.a(1, g);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if ((e & 0x1) != 0) {
      paramlxz.a(4, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if ((e & 0x2) != 0) {
      i = j + lxz.b(1, g);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    j = i;
    if ((e & 0x1) != 0) {
      j = i + (lxz.f(4) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.LinkProto.LinkArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */