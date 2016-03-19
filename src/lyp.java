public final class lyp
  extends lyb<lyp>
{
  private static volatile lyp[] i;
  public String a = null;
  public Boolean b = null;
  public Double c = null;
  public String[] d = lyo.f;
  public Long e = null;
  public Long f = null;
  public Integer g = null;
  public long[] h = lyo.b;
  
  public lyp()
  {
    eD = null;
    eE = -1;
  }
  
  public static lyp[] d()
  {
    if (i == null) {}
    synchronized (lyf.a)
    {
      if (i == null) {
        i = new lyp[0];
      }
      return i;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int k = 0;
    paramlxz.a(1, a);
    if (b != null) {
      paramlxz.a(2, b.booleanValue());
    }
    if (c != null) {
      paramlxz.a(3, c.doubleValue());
    }
    int j;
    if ((d != null) && (d.length > 0))
    {
      j = 0;
      while (j < d.length)
      {
        String str = d[j];
        if (str != null) {
          paramlxz.a(4, str);
        }
        j += 1;
      }
    }
    if (g != null) {
      paramlxz.a(5, g.intValue());
    }
    if (e != null) {
      paramlxz.b(6, e.longValue());
    }
    if (f != null) {
      paramlxz.b(7, f.longValue());
    }
    if ((h != null) && (h.length > 0))
    {
      j = k;
      while (j < h.length)
      {
        paramlxz.b(8, h[j]);
        j += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i3 = 0;
    int j = super.b() + lxz.b(1, a);
    int k = j;
    if (b != null)
    {
      b.booleanValue();
      k = j + (lxz.f(2) + 1);
    }
    j = k;
    if (c != null)
    {
      c.doubleValue();
      j = k + (lxz.f(3) + 8);
    }
    k = j;
    int m;
    if (d != null)
    {
      k = j;
      if (d.length > 0)
      {
        k = 0;
        m = 0;
        int i1;
        for (int n = 0; k < d.length; n = i1)
        {
          String str = d[k];
          int i2 = m;
          i1 = n;
          if (str != null)
          {
            i1 = n + 1;
            i2 = m + lxz.a(str);
          }
          k += 1;
          m = i2;
        }
        k = j + m + n * 1;
      }
    }
    j = k;
    if (g != null) {
      j = k + lxz.e(5, g.intValue());
    }
    k = j;
    if (e != null) {
      k = j + lxz.e(6, e.longValue());
    }
    j = k;
    if (f != null) {
      j = k + lxz.e(7, f.longValue());
    }
    k = j;
    if (h != null)
    {
      k = j;
      if (h.length > 0)
      {
        m = 0;
        k = i3;
        while (k < h.length)
        {
          m += lxz.b(h[k]);
          k += 1;
        }
        k = j + m + h.length * 1;
      }
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     lyp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */