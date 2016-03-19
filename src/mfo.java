public final class mfo
  extends lyb<mfo>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public mfy[] d = mfy.d();
  public mfy[] e = mfy.d();
  public String f = null;
  public mfp[] g = mfp.d();
  
  public mfo()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    paramlxz.a(1, a);
    paramlxz.a(2, b);
    int i;
    Object localObject;
    if ((d != null) && (d.length > 0))
    {
      i = 0;
      while (i < d.length)
      {
        localObject = d[i];
        if (localObject != null) {
          paramlxz.b(3, (lyi)localObject);
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
          paramlxz.b(4, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(5, c);
    }
    if ((e != null) && (e.length > 0))
    {
      i = j;
      while (i < e.length)
      {
        localObject = e[i];
        if (localObject != null) {
          paramlxz.b(7, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (f != null) {
      paramlxz.a(8, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b() + lxz.b(1, a) + lxz.b(2, b);
    int i = j;
    Object localObject;
    int k;
    if (d != null)
    {
      i = j;
      if (d.length > 0)
      {
        i = j;
        j = 0;
        while (j < d.length)
        {
          localObject = d[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(3, (lyi)localObject);
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
        j = 0;
        while (j < g.length)
        {
          localObject = g[j];
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
    i = j;
    if (c != null) {
      i = j + lxz.b(5, c);
    }
    j = i;
    if (e != null)
    {
      j = i;
      if (e.length > 0)
      {
        k = m;
        for (;;)
        {
          j = i;
          if (k >= e.length) {
            break;
          }
          localObject = e[k];
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
    if (f != null) {
      i = j + lxz.b(8, f);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */