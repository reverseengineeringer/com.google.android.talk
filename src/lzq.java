public final class lzq
  extends lyb<lzq>
{
  private static volatile lzq[] m;
  public lzt a = null;
  public mau b = null;
  public int c = Integer.MIN_VALUE;
  public Integer d = null;
  public lzt e = null;
  public mau f = null;
  public Boolean g = null;
  public lzy[] h = lzy.d();
  public Boolean i = null;
  public String j = null;
  public int k = Integer.MIN_VALUE;
  public itu l = null;
  
  public lzq()
  {
    eD = null;
    eE = -1;
  }
  
  public static lzq[] d()
  {
    if (m == null) {}
    synchronized (lyf.a)
    {
      if (m == null) {
        m = new lzq[0];
      }
      return m;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (c != Integer.MIN_VALUE) {
      paramlxz.a(2, c);
    }
    if (d != null) {
      paramlxz.a(3, d.intValue());
    }
    if (e != null) {
      paramlxz.b(4, e);
    }
    if (g != null) {
      paramlxz.a(5, g.booleanValue());
    }
    if ((h != null) && (h.length > 0))
    {
      int n = 0;
      while (n < h.length)
      {
        lzy locallzy = h[n];
        if (locallzy != null) {
          paramlxz.b(6, locallzy);
        }
        n += 1;
      }
    }
    if (i != null) {
      paramlxz.a(7, i.booleanValue());
    }
    if (j != null) {
      paramlxz.a(8, j);
    }
    if (b != null) {
      paramlxz.b(9, b);
    }
    if (l != null) {
      paramlxz.b(10, l);
    }
    if (f != null) {
      paramlxz.b(11, f);
    }
    if (k != Integer.MIN_VALUE) {
      paramlxz.a(12, k);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i1 = super.b();
    int n = i1;
    if (a != null) {
      n = i1 + lxz.d(1, a);
    }
    i1 = n;
    if (c != Integer.MIN_VALUE) {
      i1 = n + lxz.e(2, c);
    }
    n = i1;
    if (d != null) {
      n = i1 + lxz.e(3, d.intValue());
    }
    i1 = n;
    if (e != null) {
      i1 = n + lxz.d(4, e);
    }
    n = i1;
    if (g != null)
    {
      g.booleanValue();
      n = i1 + (lxz.f(5) + 1);
    }
    i1 = n;
    if (h != null)
    {
      i1 = n;
      if (h.length > 0)
      {
        i1 = 0;
        while (i1 < h.length)
        {
          lzy locallzy = h[i1];
          int i2 = n;
          if (locallzy != null) {
            i2 = n + lxz.d(6, locallzy);
          }
          i1 += 1;
          n = i2;
        }
        i1 = n;
      }
    }
    n = i1;
    if (i != null)
    {
      i.booleanValue();
      n = i1 + (lxz.f(7) + 1);
    }
    i1 = n;
    if (j != null) {
      i1 = n + lxz.b(8, j);
    }
    n = i1;
    if (b != null) {
      n = i1 + lxz.d(9, b);
    }
    i1 = n;
    if (l != null) {
      i1 = n + lxz.d(10, l);
    }
    n = i1;
    if (f != null) {
      n = i1 + lxz.d(11, f);
    }
    i1 = n;
    if (k != Integer.MIN_VALUE) {
      i1 = n + lxz.e(12, k);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     lzq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */