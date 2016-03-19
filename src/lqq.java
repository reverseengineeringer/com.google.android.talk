public final class lqq
  extends lyb<lqq>
{
  private static volatile lqq[] b;
  public lrf a = null;
  
  public lqq()
  {
    eD = null;
    eE = -1;
  }
  
  public static lqq[] d()
  {
    if (b == null) {}
    synchronized (lyf.a)
    {
      if (b == null) {
        b = new lqq[0];
      }
      return b;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lqq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */