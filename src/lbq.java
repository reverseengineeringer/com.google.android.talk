public final class lbq
  extends lyb<lbq>
{
  public static final lyc<msu, lbq> a = lyc.a(lbq.class, 97670194L);
  private static final lbq[] k = new lbq[0];
  public lbr[] b = lbr.d();
  public lbs[] c = lbs.d();
  public lbs[] d = lbs.d();
  public Boolean e = null;
  public Boolean f = null;
  public Boolean g = null;
  public lbr[] h = lbr.d();
  public msu i = null;
  public lbv j = null;
  
  public lbq()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int n = 0;
    int m;
    Object localObject;
    if ((b != null) && (b.length > 0))
    {
      m = 0;
      while (m < b.length)
      {
        localObject = b[m];
        if (localObject != null) {
          paramlxz.b(2, (lyi)localObject);
        }
        m += 1;
      }
    }
    if (e != null) {
      paramlxz.a(3, e.booleanValue());
    }
    if (f != null) {
      paramlxz.a(4, f.booleanValue());
    }
    if ((h != null) && (h.length > 0))
    {
      m = 0;
      while (m < h.length)
      {
        localObject = h[m];
        if (localObject != null) {
          paramlxz.b(5, (lyi)localObject);
        }
        m += 1;
      }
    }
    if ((c != null) && (c.length > 0))
    {
      m = 0;
      while (m < c.length)
      {
        localObject = c[m];
        if (localObject != null) {
          paramlxz.b(6, (lyi)localObject);
        }
        m += 1;
      }
    }
    if (g != null) {
      paramlxz.a(7, g.booleanValue());
    }
    if (i != null) {
      paramlxz.b(8, i);
    }
    if ((d != null) && (d.length > 0))
    {
      m = n;
      while (m < d.length)
      {
        localObject = d[m];
        if (localObject != null) {
          paramlxz.b(9, (lyi)localObject);
        }
        m += 1;
      }
    }
    if (j != null) {
      paramlxz.b(500, j);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int n = super.b();
    int m = n;
    Object localObject;
    int i1;
    if (b != null)
    {
      m = n;
      if (b.length > 0)
      {
        m = n;
        n = 0;
        while (n < b.length)
        {
          localObject = b[n];
          i1 = m;
          if (localObject != null) {
            i1 = m + lxz.d(2, (lyi)localObject);
          }
          n += 1;
          m = i1;
        }
      }
    }
    n = m;
    if (e != null)
    {
      e.booleanValue();
      n = m + (lxz.f(3) + 1);
    }
    m = n;
    if (f != null)
    {
      f.booleanValue();
      m = n + (lxz.f(4) + 1);
    }
    n = m;
    if (h != null)
    {
      n = m;
      if (h.length > 0)
      {
        n = 0;
        while (n < h.length)
        {
          localObject = h[n];
          i1 = m;
          if (localObject != null) {
            i1 = m + lxz.d(5, (lyi)localObject);
          }
          n += 1;
          m = i1;
        }
        n = m;
      }
    }
    m = n;
    if (c != null)
    {
      m = n;
      if (c.length > 0)
      {
        m = n;
        n = 0;
        while (n < c.length)
        {
          localObject = c[n];
          i1 = m;
          if (localObject != null) {
            i1 = m + lxz.d(6, (lyi)localObject);
          }
          n += 1;
          m = i1;
        }
      }
    }
    n = m;
    if (g != null)
    {
      g.booleanValue();
      n = m + (lxz.f(7) + 1);
    }
    m = n;
    if (i != null) {
      m = n + lxz.d(8, i);
    }
    n = m;
    if (d != null)
    {
      n = m;
      if (d.length > 0)
      {
        i1 = i2;
        for (;;)
        {
          n = m;
          if (i1 >= d.length) {
            break;
          }
          localObject = d[i1];
          n = m;
          if (localObject != null) {
            n = m + lxz.d(9, (lyi)localObject);
          }
          i1 += 1;
          m = n;
        }
      }
    }
    m = n;
    if (j != null) {
      m = n + lxz.d(500, j);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     lbq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */