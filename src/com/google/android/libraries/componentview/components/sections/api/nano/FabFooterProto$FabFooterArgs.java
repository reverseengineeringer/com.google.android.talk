package com.google.android.libraries.componentview.components.sections.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import com.google.android.libraries.componentview.components.base.api.nano.AttributesProto.Color;
import com.google.android.libraries.componentview.components.base.api.nano.AttributesProto.ViewArgs;
import lxz;
import lyb;
import lyc;

public final class FabFooterProto$FabFooterArgs
  extends lyb<FabFooterArgs>
{
  public static final lyc<ComponentsProto.Component, FabFooterArgs> a = lyc.a(FabFooterArgs.class, 867122578L);
  private static final FabFooterArgs[] e = new FabFooterArgs[0];
  public AttributesProto.Color b = null;
  public AttributesProto.Color c = null;
  public AttributesProto.ViewArgs d = null;
  private int f = 0;
  private String g = "";
  private String h = "";
  private String i = "";
  
  public FabFooterProto$FabFooterArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((f & 0x1) != 0) {
      paramlxz.a(1, g);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if ((f & 0x2) != 0) {
      paramlxz.a(3, h);
    }
    if ((f & 0x4) != 0) {
      paramlxz.a(4, i);
    }
    if (d != null) {
      paramlxz.b(5, d);
    }
    if (c != null) {
      paramlxz.b(6, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int j = k;
    if ((f & 0x1) != 0) {
      j = k + lxz.b(1, g);
    }
    k = j;
    if (b != null) {
      k = j + lxz.d(2, b);
    }
    j = k;
    if ((f & 0x2) != 0) {
      j = k + lxz.b(3, h);
    }
    k = j;
    if ((f & 0x4) != 0) {
      k = j + lxz.b(4, i);
    }
    j = k;
    if (d != null) {
      j = k + lxz.d(5, d);
    }
    k = j;
    if (c != null) {
      k = j + lxz.d(6, c);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.sections.api.nano.FabFooterProto.FabFooterArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */