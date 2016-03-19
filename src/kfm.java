public final class kfm
  extends lyb<kfm>
{
  public Long a = null;
  public Integer b = null;
  public Integer c = null;
  public int[] d = lyo.a;
  public Integer e = null;
  public Boolean f = null;
  public int[] g = lyo.a;
  public kdo requestHeader = null;
  
  public kfm()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (a != null) {
      paramlxz.b(2, a.longValue());
    }
    if (b != null) {
      paramlxz.a(3, b.intValue());
    }
    if (c != null) {
      paramlxz.a(4, c.intValue());
    }
    int i;
    if ((d != null) && (d.length > 0))
    {
      i = 0;
      while (i < d.length)
      {
        paramlxz.a(5, d[i]);
        i += 1;
      }
    }
    if (e != null) {
      paramlxz.a(6, e.intValue());
    }
    if (f != null) {
      paramlxz.a(7, f.booleanValue());
    }
    if ((g != null) && (g.length > 0))
    {
      i = j;
      while (i < g.length)
      {
        paramlxz.a(8, g[i]);
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
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.e(2, a.longValue());
    }
    int k = j;
    if (b != null) {
      k = j + lxz.e(3, b.intValue());
    }
    i = k;
    if (c != null) {
      i = k + lxz.e(4, c.intValue());
    }
    j = i;
    if (d != null)
    {
      j = i;
      if (d.length > 0)
      {
        j = 0;
        k = 0;
        while (j < d.length)
        {
          k += lxz.e(d[j]);
          j += 1;
        }
        j = i + k + d.length * 1;
      }
    }
    k = j;
    if (e != null) {
      k = j + lxz.e(6, e.intValue());
    }
    i = k;
    if (f != null)
    {
      f.booleanValue();
      i = k + (lxz.f(7) + 1);
    }
    j = i;
    if (g != null)
    {
      j = i;
      if (g.length > 0)
      {
        k = 0;
        j = m;
        while (j < g.length)
        {
          k += lxz.e(g[j]);
          j += 1;
        }
        j = i + k + g.length * 1;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kfm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */