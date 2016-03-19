public final class lzc
  extends lyb<lzc>
{
  public Long a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String[] e = lyo.f;
  public lzd[] f = lzd.d();
  public lza[] g = lza.d();
  public byte[] h = null;
  
  public lzc()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.a(1, a.longValue());
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
    if ((e != null) && (e.length > 0))
    {
      i = 0;
      while (i < e.length)
      {
        localObject = e[i];
        if (localObject != null) {
          paramlxz.a(5, (String)localObject);
        }
        i += 1;
      }
    }
    if ((f != null) && (f.length > 0))
    {
      i = 0;
      while (i < f.length)
      {
        localObject = f[i];
        if (localObject != null) {
          paramlxz.b(6, (lyi)localObject);
        }
        i += 1;
      }
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
    if (h != null) {
      paramlxz.a(8, h);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a.longValue());
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
    if (e != null)
    {
      j = i;
      if (e.length > 0)
      {
        j = 0;
        k = 0;
        int n;
        for (int m = 0; j < e.length; m = n)
        {
          localObject = e[j];
          int i1 = k;
          n = m;
          if (localObject != null)
          {
            n = m + 1;
            i1 = k + lxz.a((String)localObject);
          }
          j += 1;
          k = i1;
        }
        j = i + k + m * 1;
      }
    }
    i = j;
    if (f != null)
    {
      i = j;
      if (f.length > 0)
      {
        i = j;
        j = 0;
        while (j < f.length)
        {
          localObject = f[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(6, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    j = i;
    if (g != null)
    {
      j = i;
      if (g.length > 0)
      {
        k = i2;
        for (;;)
        {
          j = i;
          if (k >= g.length) {
            break;
          }
          localObject = g[k];
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
    if (h != null) {
      i = j + lxz.b(8, h);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */