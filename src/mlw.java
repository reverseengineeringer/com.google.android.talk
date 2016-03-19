public final class mlw
  extends lyb<mlw>
{
  private static volatile mlw[] i;
  public mks a = null;
  public miq b = null;
  public String c = null;
  public mmv[] d = mmv.d();
  public String e = null;
  public mix[] f = mix.d();
  public mma[] g = mma.d();
  public Integer h = null;
  
  public mlw()
  {
    eD = null;
    eE = -1;
  }
  
  public static mlw[] d()
  {
    if (i == null) {}
    synchronized (lyf.a)
    {
      if (i == null) {
        i = new mlw[0];
      }
      return i;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int k = 0;
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    int j;
    Object localObject;
    if ((d != null) && (d.length > 0))
    {
      j = 0;
      while (j < d.length)
      {
        localObject = d[j];
        if (localObject != null) {
          paramlxz.b(4, (lyi)localObject);
        }
        j += 1;
      }
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if ((f != null) && (f.length > 0))
    {
      j = 0;
      while (j < f.length)
      {
        localObject = f[j];
        if (localObject != null) {
          paramlxz.b(6, (lyi)localObject);
        }
        j += 1;
      }
    }
    if ((g != null) && (g.length > 0))
    {
      j = k;
      while (j < g.length)
      {
        localObject = g[j];
        if (localObject != null) {
          paramlxz.b(7, (lyi)localObject);
        }
        j += 1;
      }
    }
    if (h != null) {
      paramlxz.a(8, h.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = 0;
    int k = super.b();
    int j = k;
    if (a != null) {
      j = k + lxz.d(1, a);
    }
    k = j;
    if (b != null) {
      k = j + lxz.d(2, b);
    }
    j = k;
    if (c != null) {
      j = k + lxz.b(3, c);
    }
    int m = j;
    Object localObject;
    if (d != null)
    {
      m = j;
      if (d.length > 0)
      {
        k = 0;
        while (k < d.length)
        {
          localObject = d[k];
          m = j;
          if (localObject != null) {
            m = j + lxz.d(4, (lyi)localObject);
          }
          k += 1;
          j = m;
        }
        m = j;
      }
    }
    k = m;
    if (e != null) {
      k = m + lxz.b(5, e);
    }
    j = k;
    if (f != null)
    {
      j = k;
      if (f.length > 0)
      {
        j = k;
        k = 0;
        while (k < f.length)
        {
          localObject = f[k];
          m = j;
          if (localObject != null) {
            m = j + lxz.d(6, (lyi)localObject);
          }
          k += 1;
          j = m;
        }
      }
    }
    k = j;
    if (g != null)
    {
      k = j;
      if (g.length > 0)
      {
        m = n;
        for (;;)
        {
          k = j;
          if (m >= g.length) {
            break;
          }
          localObject = g[m];
          k = j;
          if (localObject != null) {
            k = j + lxz.d(7, (lyi)localObject);
          }
          m += 1;
          j = k;
        }
      }
    }
    j = k;
    if (h != null) {
      j = k + lxz.e(8, h.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mlw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */