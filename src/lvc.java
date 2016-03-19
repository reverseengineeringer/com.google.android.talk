public final class lvc
  extends lyb<lvc>
{
  private static volatile lvc[] d;
  public byte[] a = null;
  public Integer b = null;
  public Integer c = null;
  
  public lvc()
  {
    eD = null;
    eE = -1;
  }
  
  public static lvc[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new lvc[0];
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
    if (c != null) {
      paramlxz.a(3, c.intValue());
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
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lvc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */