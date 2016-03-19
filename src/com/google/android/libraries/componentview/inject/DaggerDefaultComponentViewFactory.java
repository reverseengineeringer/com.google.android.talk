package com.google.android.libraries.componentview.inject;

import kog;

public final class DaggerDefaultComponentViewFactory
  implements DefaultComponentViewFactory
{
  kog a;
  
  public NativeComponentRegistrySubcomponent a()
  {
    return new DaggerDefaultComponentViewFactory.NativeComponentRegistrySubcomponentImpl(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.inject.DaggerDefaultComponentViewFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */