public final class mfs
  extends lyb<mfs>
{
  public Boolean a = null;
  public Boolean b = null;
  public Integer c = null;
  public mfy[] d = mfy.d();
  public mfv e = null;
  public mfz[] f = mfz.d();
  public Boolean g = null;
  public Boolean h = null;
  public Boolean i = null;
  public int j = Integer.MIN_VALUE;
  
  public mfs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int m = 0;
    if (a != null) {
      paramlxz.a(1, a.booleanValue());
    }
    if (b != null) {
      paramlxz.a(2, b.booleanValue());
    }
    paramlxz.a(3, c.intValue());
    int k;
    Object localObject;
    if ((d != null) && (d.length > 0))
    {
      k = 0;
      while (k < d.length)
      {
        localObject = d[k];
        if (localObject != null) {
          paramlxz.b(4, (lyi)localObject);
        }
        k += 1;
      }
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if ((f != null) && (f.length > 0))
    {
      k = m;
      while (k < f.length)
      {
        localObject = f[k];
        if (localObject != null) {
          paramlxz.b(6, (lyi)localObject);
        }
        k += 1;
      }
    }
    if (g != null) {
      paramlxz.a(7, g.booleanValue());
    }
    if (h != null) {
      paramlxz.a(8, h.booleanValue());
    }
    if (i != null) {
      paramlxz.a(9, i.booleanValue());
    }
    if (j != Integer.MIN_VALUE) {
      paramlxz.a(10, j);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i1 = 0;
    int m = super.b();
    int k = m;
    if (a != null)
    {
      a.booleanValue();
      k = m + (lxz.f(1) + 1);
    }
    m = k;
    if (b != null)
    {
      b.booleanValue();
      m = k + (lxz.f(2) + 1);
    }
    k = m + lxz.e(3, c.intValue());
    m = k;
    Object localObject;
    int n;
    if (d != null)
    {
      m = k;
      if (d.length > 0)
      {
        m = 0;
        while (m < d.length)
        {
          localObject = d[m];
          n = k;
          if (localObject != null) {
            n = k + lxz.d(4, (lyi)localObject);
          }
          m += 1;
          k = n;
        }
        m = k;
      }
    }
    k = m;
    if (e != null) {
      k = m + lxz.d(5, e);
    }
    m = k;
    if (f != null)
    {
      m = k;
      if (f.length > 0)
      {
        n = i1;
        for (;;)
        {
          m = k;
          if (n >= f.length) {
            break;
          }
          localObject = f[n];
          m = k;
          if (localObject != null) {
            m = k + lxz.d(6, (lyi)localObject);
          }
          n += 1;
          k = m;
        }
      }
    }
    k = m;
    if (g != null)
    {
      g.booleanValue();
      k = m + (lxz.f(7) + 1);
    }
    m = k;
    if (h != null)
    {
      h.booleanValue();
      m = k + (lxz.f(8) + 1);
    }
    k = m;
    if (i != null)
    {
      i.booleanValue();
      k = m + (lxz.f(9) + 1);
    }
    m = k;
    if (j != Integer.MIN_VALUE) {
      m = k + lxz.e(10, j);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     mfs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */