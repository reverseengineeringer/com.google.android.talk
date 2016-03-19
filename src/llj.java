public final class llj
  extends lyb<llj>
{
  public String a = null;
  public los[] b = los.d();
  public Long c = null;
  public Long d = null;
  public lls e = null;
  public llk[] f = llk.d();
  public Integer g = null;
  public int[] h = lyo.a;
  
  public llj()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (c != null) {
      paramlxz.b(2, c.longValue());
    }
    if (d != null) {
      paramlxz.b(3, d.longValue());
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
    if (g != null) {
      paramlxz.a(6, g.intValue());
    }
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        localObject = b[i];
        if (localObject != null) {
          paramlxz.b(7, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (e != null) {
      paramlxz.b(9, e);
    }
    if ((h != null) && (h.length > 0))
    {
      i = j;
      while (i < h.length)
      {
        paramlxz.a(10, h[i]);
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
      i = j + lxz.b(1, a);
    }
    j = i;
    if (c != null) {
      j = i + lxz.e(2, c.longValue());
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(3, d.longValue());
    }
    j = i;
    Object localObject;
    int k;
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
    if (g != null) {
      i = j + lxz.e(6, g.intValue());
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
            k = i + lxz.d(7, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(9, e);
    }
    j = i;
    if (h != null)
    {
      j = i;
      if (h.length > 0)
      {
        k = 0;
        j = m;
        while (j < h.length)
        {
          k += lxz.e(h[j]);
          j += 1;
        }
        j = i + k + h.length * 1;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     llj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */