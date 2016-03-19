public final class lyx
  extends lyb<lyx>
{
  private static volatile lyx[] b;
  public String a = null;
  
  public lyx()
  {
    eD = null;
    eE = -1;
  }
  
  public static lyx[] d()
  {
    if (b == null) {}
    synchronized (lyf.a)
    {
      if (b == null) {
        b = new lyx[0];
      }
      return b;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lyx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */