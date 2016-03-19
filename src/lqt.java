public final class lqt
  extends lyb<lqt>
{
  private static volatile lqt[] d;
  public int a = Integer.MIN_VALUE;
  public int b = Integer.MIN_VALUE;
  public lqu c = null;
  
  public lqt()
  {
    eD = null;
    eE = -1;
  }
  
  public static lqt[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new lqt[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
    }
    if (b != Integer.MIN_VALUE) {
      paramlxz.a(2, b);
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
    if (a != Integer.MIN_VALUE) {
      i = j + lxz.e(1, a);
    }
    j = i;
    if (b != Integer.MIN_VALUE) {
      j = i + lxz.e(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lqt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */