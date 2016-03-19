package com.google.android.libraries.componentview.components.elements.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import com.google.android.libraries.componentview.components.base.api.nano.AttributesProto.DateFormatSet;
import com.google.android.libraries.componentview.components.base.api.nano.TextViewProto.TextViewArgs;
import lxz;
import lyb;
import lyc;

public final class ClockProto$ClockArgs
  extends lyb<ClockArgs>
{
  public static final lyc<ComponentsProto.Component, ClockArgs> a = lyc.a(ClockArgs.class, 859338786L);
  private static final ClockArgs[] d = new ClockArgs[0];
  public TextViewProto.TextViewArgs b = null;
  public AttributesProto.DateFormatSet c = null;
  private int e = 0;
  private String f = "";
  
  public ClockProto$ClockArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if ((e & 0x1) != 0) {
      paramlxz.a(2, f);
    }
    if (c != null) {
      paramlxz.b(3, c);
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
    if ((e & 0x1) != 0) {
      j = i + lxz.b(2, f);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.api.nano.ClockProto.ClockArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */