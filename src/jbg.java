public final class jbg
  extends lyb<jbg>
{
  private static volatile jbg[] j;
  public jbn a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public Boolean f = null;
  public String[] g = lyo.f;
  public jcq[] h = jcq.d();
  public Integer i = null;
  
  public jbg()
  {
    eD = null;
    eE = -1;
  }
  
  public static jbg[] d()
  {
    if (j == null) {}
    synchronized (lyf.a)
    {
      if (j == null) {
        j = new jbg[0];
      }
      return j;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int m = 0;
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
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
      paramlxz.a(6, f.booleanValue());
    }
    int k;
    Object localObject;
    if ((g != null) && (g.length > 0))
    {
      k = 0;
      while (k < g.length)
      {
        localObject = g[k];
        if (localObject != null) {
          paramlxz.a(7, (String)localObject);
        }
        k += 1;
      }
    }
    if ((h != null) && (h.length > 0))
    {
      k = m;
      while (k < h.length)
      {
        localObject = h[k];
        if (localObject != null) {
          paramlxz.b(8, (lyi)localObject);
        }
        k += 1;
      }
    }
    if (i != null) {
      paramlxz.a(9, i.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i4 = 0;
    int m = super.b();
    int k = m;
    if (a != null) {
      k = m + lxz.d(1, a);
    }
    m = k;
    if (b != null) {
      m = k + lxz.b(2, b);
    }
    k = m;
    if (c != null) {
      k = m + lxz.b(3, c);
    }
    m = k;
    if (d != null) {
      m = k + lxz.b(4, d);
    }
    k = m;
    if (e != null) {
      k = m + lxz.b(5, e);
    }
    m = k;
    if (f != null)
    {
      f.booleanValue();
      m = k + (lxz.f(6) + 1);
    }
    k = m;
    int n;
    Object localObject;
    if (g != null)
    {
      k = m;
      if (g.length > 0)
      {
        k = 0;
        n = 0;
        int i2;
        for (int i1 = 0; k < g.length; i1 = i2)
        {
          localObject = g[k];
          int i3 = n;
          i2 = i1;
          if (localObject != null)
          {
            i2 = i1 + 1;
            i3 = n + lxz.a((String)localObject);
          }
          k += 1;
          n = i3;
        }
        k = m + n + i1 * 1;
      }
    }
    m = k;
    if (h != null)
    {
      m = k;
      if (h.length > 0)
      {
        n = i4;
        for (;;)
        {
          m = k;
          if (n >= h.length) {
            break;
          }
          localObject = h[n];
          m = k;
          if (localObject != null) {
            m = k + lxz.d(8, (lyi)localObject);
          }
          n += 1;
          k = m;
        }
      }
    }
    k = m;
    if (i != null) {
      k = m + lxz.e(9, i.intValue());
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     jbg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */