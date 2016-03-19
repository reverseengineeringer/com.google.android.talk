public final class mbq
  extends lyb<mbq>
{
  private static volatile mbq[] l;
  public Long a = null;
  public int b = Integer.MIN_VALUE;
  public String c = null;
  public byte[] d = null;
  public byte[] e = null;
  public mcb f = null;
  public mbp g = null;
  public byte[] h = null;
  public Integer i = null;
  public byte[] j = null;
  public byte[] k = null;
  
  public mbq()
  {
    eD = null;
    eE = -1;
  }
  
  public static mbq[] d()
  {
    if (l == null) {}
    synchronized (lyf.a)
    {
      if (l == null) {
        l = new mbq[0];
      }
      return l;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    if (b != Integer.MIN_VALUE) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h);
    }
    if (i != null) {
      paramlxz.b(9, i.intValue());
    }
    if (j != null) {
      paramlxz.a(10, j);
    }
    if (k != null) {
      paramlxz.a(11, k);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = super.b();
    int m = n;
    if (a != null) {
      m = n + lxz.e(1, a.longValue());
    }
    n = m;
    if (b != Integer.MIN_VALUE) {
      n = m + lxz.e(2, b);
    }
    m = n;
    if (c != null) {
      m = n + lxz.b(3, c);
    }
    n = m;
    if (d != null) {
      n = m + lxz.b(4, d);
    }
    m = n;
    if (e != null) {
      m = n + lxz.b(5, e);
    }
    n = m;
    if (f != null) {
      n = m + lxz.d(6, f);
    }
    m = n;
    if (g != null) {
      m = n + lxz.d(7, g);
    }
    n = m;
    if (h != null) {
      n = m + lxz.b(8, h);
    }
    m = n;
    if (i != null)
    {
      i.intValue();
      m = n + (lxz.f(9) + 4);
    }
    n = m;
    if (j != null) {
      n = m + lxz.b(10, j);
    }
    m = n;
    if (k != null) {
      m = n + lxz.b(11, k);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     mbq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */