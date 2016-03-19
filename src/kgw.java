public final class kgw
  extends lyb<kgw>
{
  private static volatile kgw[] k;
  public String a = null;
  public Long b = null;
  public Integer c = null;
  public Long d = null;
  public Long e = null;
  public Long f = null;
  public String g = null;
  public String h = null;
  public kgx[] i = kgx.d();
  public String j = null;
  
  public kgw()
  {
    eD = null;
    eE = -1;
  }
  
  public static kgw[] d()
  {
    if (k == null) {}
    synchronized (lyf.a)
    {
      if (k == null) {
        k = new kgw[0];
      }
      return k;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b.longValue());
    }
    if (c != null) {
      paramlxz.a(4, c.intValue());
    }
    if (d != null) {
      paramlxz.b(5, d.longValue());
    }
    if (e != null) {
      paramlxz.b(6, e.longValue());
    }
    if (f != null) {
      paramlxz.b(7, f.longValue());
    }
    if (g != null) {
      paramlxz.a(8, g);
    }
    if (h != null) {
      paramlxz.a(9, h);
    }
    if ((i != null) && (i.length > 0))
    {
      int m = 0;
      while (m < i.length)
      {
        kgx localkgx = i[m];
        if (localkgx != null) {
          paramlxz.b(10, localkgx);
        }
        m += 1;
      }
    }
    if (j != null) {
      paramlxz.a(11, j);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = super.b();
    int m = n;
    if (a != null) {
      m = n + lxz.b(1, a);
    }
    n = m;
    if (b != null) {
      n = m + lxz.e(2, b.longValue());
    }
    m = n;
    if (c != null) {
      m = n + lxz.e(4, c.intValue());
    }
    n = m;
    if (d != null) {
      n = m + lxz.e(5, d.longValue());
    }
    m = n;
    if (e != null) {
      m = n + lxz.e(6, e.longValue());
    }
    n = m;
    if (f != null) {
      n = m + lxz.e(7, f.longValue());
    }
    int i1 = n;
    if (g != null) {
      i1 = n + lxz.b(8, g);
    }
    m = i1;
    if (h != null) {
      m = i1 + lxz.b(9, h);
    }
    n = m;
    if (i != null)
    {
      n = m;
      if (i.length > 0)
      {
        n = 0;
        while (n < i.length)
        {
          kgx localkgx = i[n];
          i1 = m;
          if (localkgx != null) {
            i1 = m + lxz.d(10, localkgx);
          }
          n += 1;
          m = i1;
        }
        n = m;
      }
    }
    m = n;
    if (j != null) {
      m = n + lxz.b(11, j);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     kgw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */