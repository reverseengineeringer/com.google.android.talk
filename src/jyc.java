public final class jyc
  extends lyb<jyc>
{
  private static volatile jyc[] i;
  public jxw a = null;
  public Long b = null;
  public jxr c = null;
  public jzl[] d = jzl.d();
  public jzp e = null;
  public jzp f = null;
  public Boolean g = null;
  public jyl[] h = jyl.d();
  
  public jyc()
  {
    eD = null;
    eE = -1;
  }
  
  public static jyc[] d()
  {
    if (i == null) {}
    synchronized (lyf.a)
    {
      if (i == null) {
        i = new jyc[0];
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
    if (c != null) {
      paramlxz.b(2, c);
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
          paramlxz.b(3, (lyi)localObject);
        }
        j += 1;
      }
    }
    if (g != null) {
      paramlxz.a(4, g.booleanValue());
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (b != null) {
      paramlxz.a(6, b.longValue());
    }
    if ((h != null) && (h.length > 0))
    {
      j = k;
      while (j < h.length)
      {
        localObject = h[j];
        if (localObject != null) {
          paramlxz.b(7, (lyi)localObject);
        }
        j += 1;
      }
    }
    if (f != null) {
      paramlxz.b(8, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = 0;
    int j = super.b();
    int k = j;
    if (a != null) {
      k = j + lxz.d(1, a);
    }
    j = k;
    if (c != null) {
      j = k + lxz.d(2, c);
    }
    k = j;
    Object localObject;
    int m;
    if (d != null)
    {
      k = j;
      if (d.length > 0)
      {
        k = 0;
        while (k < d.length)
        {
          localObject = d[k];
          m = j;
          if (localObject != null) {
            m = j + lxz.d(3, (lyi)localObject);
          }
          k += 1;
          j = m;
        }
        k = j;
      }
    }
    j = k;
    if (g != null)
    {
      g.booleanValue();
      j = k + (lxz.f(4) + 1);
    }
    k = j;
    if (e != null) {
      k = j + lxz.d(5, e);
    }
    j = k;
    if (b != null) {
      j = k + lxz.d(6, b.longValue());
    }
    k = j;
    if (h != null)
    {
      k = j;
      if (h.length > 0)
      {
        m = n;
        for (;;)
        {
          k = j;
          if (m >= h.length) {
            break;
          }
          localObject = h[m];
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
    if (f != null) {
      j = k + lxz.d(8, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jyc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */