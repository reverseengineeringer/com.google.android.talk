package org.chromium.base.library_loader;

public class Linker
{
  private static Linker d = null;
  private static Object e = new Object();
  public int a = 0;
  public final Object b = new Object();
  private String c = null;
  
  private static native long nativeGetRandomBaseLoadAddress();
}

/* Location:
 * Qualified Name:     org.chromium.base.library_loader.Linker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */