public final class leg
  extends lyb<leg>
{
  public Integer a = null;
  public ldu[] b = ldu.d();
  public long[] c = lyo.b;
  public boolean[] d = lyo.e;
  public ldv[] e = ldv.d();
  public String f = null;
  public String g = null;
  public leh h = null;
  public Integer i = null;
  public Integer j = null;
  
  public leg()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int m = 0;
    int k;
    Object localObject;
    if ((b != null) && (b.length > 0))
    {
      k = 0;
      while (k < b.length)
      {
        localObject = b[k];
        if (localObject != null) {
          paramlxz.b(1, (lyi)localObject);
        }
        k += 1;
      }
    }
    if (f != null) {
      paramlxz.a(2, f);
    }
    if (h != null) {
      paramlxz.b(3, h);
    }
    if (i != null) {
      paramlxz.a(4, i.intValue());
    }
    if (j != null) {
      paramlxz.a(5, j.intValue());
    }
    if (a != null) {
      paramlxz.a(6, a.intValue());
    }
    if ((c != null) && (c.length > 0))
    {
      k = 0;
      while (k < c.length)
      {
        paramlxz.b(7, c[k]);
        k += 1;
      }
    }
    if ((d != null) && (d.length > 0))
    {
      k = 0;
      while (k < d.length)
      {
        paramlxz.a(8, d[k]);
        k += 1;
      }
    }
    if ((e != null) && (e.length > 0))
    {
      k = m;
      while (k < e.length)
      {
        localObject = e[k];
        if (localObject != null) {
          paramlxz.b(9, (lyi)localObject);
        }
        k += 1;
      }
    }
    if (g != null) {
      paramlxz.a(10, g);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i1 = 0;
    int m = super.b();
    int k = m;
    Object localObject;
    if (b != null)
    {
      k = m;
      if (b.length > 0)
      {
        k = m;
        m = 0;
        while (m < b.length)
        {
          localObject = b[m];
          n = k;
          if (localObject != null) {
            n = k + lxz.d(1, (lyi)localObject);
          }
          m += 1;
          k = n;
        }
      }
    }
    m = k;
    if (f != null) {
      m = k + lxz.b(2, f);
    }
    k = m;
    if (h != null) {
      k = m + lxz.d(3, h);
    }
    m = k;
    if (i != null) {
      m = k + lxz.e(4, i.intValue());
    }
    int n = m;
    if (j != null) {
      n = m + lxz.e(5, j.intValue());
    }
    k = n;
    if (a != null) {
      k = n + lxz.e(6, a.intValue());
    }
    m = k;
    if (c != null)
    {
      m = k;
      if (c.length > 0)
      {
        m = 0;
        n = 0;
        while (m < c.length)
        {
          n += lxz.b(c[m]);
          m += 1;
        }
        m = k + n + c.length * 1;
      }
    }
    k = m;
    if (d != null)
    {
      k = m;
      if (d.length > 0) {
        k = m + d.length * 1 + d.length * 1;
      }
    }
    m = k;
    if (e != null)
    {
      m = k;
      if (e.length > 0)
      {
        n = i1;
        for (;;)
        {
          m = k;
          if (n >= e.length) {
            break;
          }
          localObject = e[n];
          m = k;
          if (localObject != null) {
            m = k + lxz.d(9, (lyi)localObject);
          }
          n += 1;
          k = m;
        }
      }
    }
    k = m;
    if (g != null) {
      k = m + lxz.b(10, g);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     leg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */