public final class mjs
  extends lyb<mjs>
{
  public miv[] a = miv.d();
  public miv[] b = miv.d();
  public Integer c = null;
  public Integer d = null;
  public Integer e = null;
  public miv[] f = miv.d();
  public mjt[] g = mjt.d();
  public mjy[] h = mjy.d();
  
  public mjs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    int i;
    Object localObject;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        localObject = a[i];
        if (localObject != null) {
          paramlxz.b(1, (lyi)localObject);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        localObject = b[i];
        if (localObject != null) {
          paramlxz.b(2, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if ((f != null) && (f.length > 0))
    {
      i = 0;
      while (i < f.length)
      {
        localObject = f[i];
        if (localObject != null) {
          paramlxz.b(4, (lyi)localObject);
        }
        i += 1;
      }
    }
    if ((g != null) && (g.length > 0))
    {
      i = 0;
      while (i < g.length)
      {
        localObject = g[i];
        if (localObject != null) {
          paramlxz.b(5, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(6, d.intValue());
    }
    if ((h != null) && (h.length > 0))
    {
      i = j;
      while (i < h.length)
      {
        localObject = h[i];
        if (localObject != null) {
          paramlxz.b(7, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (e != null) {
      paramlxz.a(8, e.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b();
    int i = j;
    Object localObject;
    if (a != null)
    {
      i = j;
      if (a.length > 0)
      {
        i = j;
        j = 0;
        while (j < a.length)
        {
          localObject = a[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(1, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          localObject = b[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(2, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    j = i;
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
            k = i + lxz.d(4, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    int k = j;
    if (g != null)
    {
      k = j;
      if (g.length > 0)
      {
        i = j;
        j = 0;
        while (j < g.length)
        {
          localObject = g[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(5, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
        k = i;
      }
    }
    i = k;
    if (d != null) {
      i = k + lxz.e(6, d.intValue());
    }
    j = i;
    if (h != null)
    {
      j = i;
      if (h.length > 0)
      {
        k = m;
        for (;;)
        {
          j = i;
          if (k >= h.length) {
            break;
          }
          localObject = h[k];
          j = i;
          if (localObject != null) {
            j = i + lxz.d(7, (lyi)localObject);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(8, e.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mjs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */