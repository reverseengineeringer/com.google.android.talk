package com.google.android.libraries.componentview.internal;

import com.google.android.libraries.componentview.api.ComponentView;
import com.google.android.libraries.componentview.services.internal.ComponentInflator;

public class ComponentViewImpl
  implements ComponentView
{
  private final ComponentInflator a;
  private L b;
  
  public ComponentViewImpl(ComponentInflator paramComponentInflator, L paramL)
  {
    b = paramL;
    a = paramComponentInflator;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.internal.ComponentViewImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */