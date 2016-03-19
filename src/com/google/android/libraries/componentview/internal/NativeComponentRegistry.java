package com.google.android.libraries.componentview.internal;

import java.util.HashMap;
import java.util.Map;
import kwj;

public class NativeComponentRegistry
{
  private static final String a = NativeComponentRegistry.class.getSimpleName();
  private final HashMap<String, NativeComponentRegistry.NativeElementViewFactory> b;
  
  public NativeComponentRegistry(Map<String, NativeComponentRegistry.NativeElementViewFactory> paramMap)
  {
    b = kwj.a(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.internal.NativeComponentRegistry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */