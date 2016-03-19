public final class kdw
  extends lyb<kdw>
{
  public jzr a = null;
  public jzo[] b = jzo.d();
  public jxi[] c = jxi.d();
  public kbi d = null;
  public kcd e = null;
  public jzs f = null;
  public kbs g = null;
  public jzy h = null;
  public kff i = null;
  public byte[] j = null;
  public Long k = null;
  public kdo requestHeader = null;
  
  public kdw()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int n = 0;
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (j != null) {
      paramlxz.a(2, j);
    }
    if (k != null) {
      paramlxz.a(3, k.longValue());
    }
    int m;
    Object localObject;
    if ((b != null) && (b.length > 0))
    {
      m = 0;
      while (m < b.length)
      {
        localObject = b[m];
        if (localObject != null) {
          paramlxz.b(5, (lyi)localObject);
        }
        m += 1;
      }
    }
    if (e != null) {
      paramlxz.b(6, e);
    }
    if (f != null) {
      paramlxz.b(7, f);
    }
    if (a != null) {
      paramlxz.b(8, a);
    }
    if (d != null) {
      paramlxz.b(9, d);
    }
    if (g != null) {
      paramlxz.b(10, g);
    }
    if (h != null) {
      paramlxz.b(11, h);
    }
    if ((c != null) && (c.length > 0))
    {
      m = n;
      while (m < c.length)
      {
        localObject = c[m];
        if (localObject != null) {
          paramlxz.b(12, (lyi)localObject);
        }
        m += 1;
      }
    }
    if (i != null) {
      paramlxz.b(13, i);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int n = super.b();
    int m = n;
    if (requestHeader != null) {
      m = n + lxz.d(1, requestHeader);
    }
    n = m;
    if (j != null) {
      n = m + lxz.b(2, j);
    }
    m = n;
    if (k != null) {
      m = n + lxz.d(3, k.longValue());
    }
    n = m;
    Object localObject;
    if (b != null)
    {
      n = m;
      if (b.length > 0)
      {
        n = 0;
        while (n < b.length)
        {
          localObject = b[n];
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
    if (e != null) {
      m = n + lxz.d(6, e);
    }
    n = m;
    if (f != null) {
      n = m + lxz.d(7, f);
    }
    m = n;
    if (a != null) {
      m = n + lxz.d(8, a);
    }
    n = m;
    if (d != null) {
      n = m + lxz.d(9, d);
    }
    int i1 = n;
    if (g != null) {
      i1 = n + lxz.d(10, g);
    }
    m = i1;
    if (h != null) {
      m = i1 + lxz.d(11, h);
    }
    n = m;
    if (c != null)
    {
      n = m;
      if (c.length > 0)
      {
        i1 = i2;
        for (;;)
        {
          n = m;
          if (i1 >= c.length) {
            break;
          }
          localObject = c[i1];
          n = m;
          if (localObject != null) {
            n = m + lxz.d(12, (lyi)localObject);
          }
          i1 += 1;
          m = n;
        }
      }
    }
    m = n;
    if (i != null) {
      m = n + lxz.d(13, i);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     kdw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */