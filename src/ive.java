public final class ive
  extends lyb<ive>
{
  public String a = null;
  public Integer b = null;
  public Integer c = null;
  public ivg d = null;
  public String[] e = lyo.f;
  public iuy f = null;
  public int[] g = lyo.a;
  public ivd h = null;
  public ivi i = null;
  public int[] j = lyo.a;
  public ivf k = null;
  
  public ive()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int n = 0;
    paramlxz.a(1, a);
    paramlxz.a(2, b.intValue());
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    int m;
    if ((e != null) && (e.length > 0))
    {
      m = 0;
      while (m < e.length)
      {
        String str = e[m];
        if (str != null) {
          paramlxz.a(5, str);
        }
        m += 1;
      }
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if ((g != null) && (g.length > 0))
    {
      m = 0;
      while (m < g.length)
      {
        paramlxz.a(7, g[m]);
        m += 1;
      }
    }
    if (h != null) {
      paramlxz.b(8, h);
    }
    if (i != null) {
      paramlxz.b(9, i);
    }
    if ((j != null) && (j.length > 0))
    {
      m = n;
      while (m < j.length)
      {
        paramlxz.a(10, j[m]);
        m += 1;
      }
    }
    if (k != null) {
      paramlxz.b(11, k);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i5 = 0;
    int m = super.b() + lxz.b(1, a) + lxz.e(2, b.intValue());
    int n = m;
    if (c != null) {
      n = m + lxz.e(3, c.intValue());
    }
    m = n;
    if (d != null) {
      m = n + lxz.d(4, d);
    }
    n = m;
    if (e != null)
    {
      n = m;
      if (e.length > 0)
      {
        n = 0;
        i1 = 0;
        int i3;
        for (int i2 = 0; n < e.length; i2 = i3)
        {
          String str = e[n];
          int i4 = i1;
          i3 = i2;
          if (str != null)
          {
            i3 = i2 + 1;
            i4 = i1 + lxz.a(str);
          }
          n += 1;
          i1 = i4;
        }
        n = m + i1 + i2 * 1;
      }
    }
    m = n;
    if (f != null) {
      m = n + lxz.d(6, f);
    }
    n = m;
    if (g != null)
    {
      n = m;
      if (g.length > 0)
      {
        n = 0;
        i1 = 0;
        while (n < g.length)
        {
          i1 += lxz.e(g[n]);
          n += 1;
        }
        n = m + i1 + g.length * 1;
      }
    }
    int i1 = n;
    if (h != null) {
      i1 = n + lxz.d(8, h);
    }
    m = i1;
    if (i != null) {
      m = i1 + lxz.d(9, i);
    }
    n = m;
    if (j != null)
    {
      n = m;
      if (j.length > 0)
      {
        i1 = 0;
        n = i5;
        while (n < j.length)
        {
          i1 += lxz.e(j[n]);
          n += 1;
        }
        n = m + i1 + j.length * 1;
      }
    }
    m = n;
    if (k != null) {
      m = n + lxz.d(11, k);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     ive
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */