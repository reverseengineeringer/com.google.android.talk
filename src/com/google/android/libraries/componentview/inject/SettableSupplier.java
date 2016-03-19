package com.google.android.libraries.componentview.inject;

import kog;

public class SettableSupplier<T>
  implements kog<T>
{
  private T a;
  
  public T a()
  {
    return (T)a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.inject.SettableSupplier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */