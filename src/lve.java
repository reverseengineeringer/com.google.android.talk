public final class lve
  extends lyb<lve>
{
  private static volatile lve[] d;
  public byte[] a = null;
  public Integer b = null;
  public int c = Integer.MIN_VALUE;
  
  public lve()
  {
    eD = null;
    eE = -1;
  }
  
  public static lve[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new lve[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.c(2, b.intValue());
    }
    if (c != Integer.MIN_VALUE) {
      paramlxz.a(3, c);
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
    j = i;
    if (b != null) {
      j = i + lxz.f(2, b.intValue());
    }
    i = j;
    if (c != Integer.MIN_VALUE) {
      i = j + lxz.e(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lve
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */