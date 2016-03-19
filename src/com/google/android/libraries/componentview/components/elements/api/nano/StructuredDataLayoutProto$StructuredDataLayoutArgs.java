package com.google.android.libraries.componentview.components.elements.api.nano;

import com.google.android.libraries.componentview.components.api.nano.ComponentsProto.Component;
import com.google.android.libraries.componentview.components.base.api.nano.AttributesProto.ViewArgs;
import lxz;
import lyb;
import lyc;

public final class StructuredDataLayoutProto$StructuredDataLayoutArgs
  extends lyb<StructuredDataLayoutArgs>
{
  public static final lyc<ComponentsProto.Component, StructuredDataLayoutArgs> a = lyc.a(StructuredDataLayoutArgs.class, 867122586L);
  private static final StructuredDataLayoutArgs[] d = new StructuredDataLayoutArgs[0];
  public ComponentsProto.Component[] b = ComponentsProto.Component.d();
  public AttributesProto.ViewArgs c = null;
  
  public StructuredDataLayoutProto$StructuredDataLayoutArgs()
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
    return i;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.components.elements.api.nano.StructuredDataLayoutProto.StructuredDataLayoutArgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */