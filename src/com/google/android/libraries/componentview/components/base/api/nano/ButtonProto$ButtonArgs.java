package com.google.android.libraries.componentview.components.base.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import lxz;
import lyb;
import lyc;

public final class ButtonProto$ButtonArgs
  extends lyb<ButtonArgs>
{
  public static final lyc<ComponentsProto.Component, ButtonArgs> a = lyc.a(ButtonArgs.class, 866395770L);
  private static final ButtonArgs[] c = new ButtonArgs[0];
  public AttributesProto.ViewArgs b = null;
  private int d = 0;
  private String e = "";
  
  public ButtonProto$ButtonArgs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((d & 0x1) != 0) {
      paramlxz.a(1, e);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if ((d & 0x1) != 0) {
      i = j + lxz.b(1, e);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.base.api.nano.ButtonProto.ButtonArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */