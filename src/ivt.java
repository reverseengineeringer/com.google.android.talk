public final class ivt
  extends lyb<ivt>
{
  private static volatile ivt[] h;
  public ixc a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public ivw[] f = ivw.d();
  public ivu[] g = ivu.d();
  
  public ivt()
  {
    eD = null;
    eE = -1;
  }
  
  public static ivt[] d()
  {
    if (h == null) {}
    synchronized (lyf.a)
    {
      if (h == null) {
        h = new ivt[0];
      }
      return h;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
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
    int i;
    Object localObject;
    if ((f != null) && (f.length > 0))
    {
      i = 0;
      while (i < f.length)
      {
        localObject = f[i];
        if (localObject != null) {
          paramlxz.b(5, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (e != null) {
      paramlxz.a(6, e);
    }
    if ((g != null) && (g.length > 0))
    {
      i = j;
      while (i < g.length)
      {
        localObject = g[i];
        if (localObject != null) {
          paramlxz.b(7, (lyi)localObject);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    int k = j;
    if (c != null) {
      k = j + lxz.b(3, c);
    }
    i = k;
    if (d != null) {
      i = k + lxz.b(4, d);
    }
    j = i;
    Object localObject;
    if (f != null)
    {
      j = i;
      if (f.length > 0)
      {
        j = 0;
        while (j < f.length)
        {
          localObject = f[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(5, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (e != null) {
      i = j + lxz.b(6, e);
    }
    k = i;
    if (g != null)
    {
      k = i;
      if (g.length > 0)
      {
        j = m;
        for (;;)
        {
          k = i;
          if (j >= g.length) {
            break;
          }
          localObject = g[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(7, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     ivt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */