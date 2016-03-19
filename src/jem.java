public final class jem
  extends lyb<jem>
{
  public String a = null;
  public Integer b = null;
  public jen[] c = jen.d();
  public Long d = null;
  public jei e = null;
  public String f = null;
  public Boolean g = null;
  public jen h = null;
  public Integer i = null;
  public jen[] j = jen.d();
  public int[] k = lyo.a;
  
  public jem()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int n = 0;
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    int m;
    jen localjen;
    if ((c != null) && (c.length > 0))
    {
      m = 0;
      while (m < c.length)
      {
        localjen = c[m];
        if (localjen != null) {
          paramlxz.b(3, localjen);
        }
        m += 1;
      }
    }
    if (d != null) {
      paramlxz.b(4, d.longValue());
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g.booleanValue());
    }
    if (h != null) {
      paramlxz.b(8, h);
    }
    if (i != null) {
      paramlxz.a(9, i.intValue());
    }
    if ((j != null) && (j.length > 0))
    {
      m = 0;
      while (m < j.length)
      {
        localjen = j[m];
        if (localjen != null) {
          paramlxz.b(10, localjen);
        }
        m += 1;
      }
    }
    if ((k != null) && (k.length > 0))
    {
      m = n;
      while (m < k.length)
      {
        paramlxz.a(11, k[m]);
        m += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int m = super.b();
    int n = m;
    if (a != null) {
      n = m + lxz.b(1, a);
    }
    m = n;
    if (b != null) {
      m = n + lxz.e(2, b.intValue());
    }
    n = m;
    jen localjen;
    if (c != null)
    {
      n = m;
      if (c.length > 0)
      {
        n = 0;
        while (n < c.length)
        {
          localjen = c[n];
          i1 = m;
          if (localjen != null) {
            i1 = m + lxz.d(3, localjen);
          }
          n += 1;
          m = i1;
        }
        n = m;
      }
    }
    m = n;
    if (d != null) {
      m = n + lxz.e(4, d.longValue());
    }
    n = m;
    if (e != null) {
      n = m + lxz.d(5, e);
    }
    m = n;
    if (f != null) {
      m = n + lxz.b(6, f);
    }
    n = m;
    if (g != null)
    {
      g.booleanValue();
      n = m + (lxz.f(7) + 1);
    }
    int i1 = n;
    if (h != null) {
      i1 = n + lxz.d(8, h);
    }
    m = i1;
    if (i != null) {
      m = i1 + lxz.e(9, i.intValue());
    }
    n = m;
    if (j != null)
    {
      n = m;
      if (j.length > 0)
      {
        n = 0;
        while (n < j.length)
        {
          localjen = j[n];
          i1 = m;
          if (localjen != null) {
            i1 = m + lxz.d(10, localjen);
          }
          n += 1;
          m = i1;
        }
        n = m;
      }
    }
    m = n;
    if (k != null)
    {
      m = n;
      if (k.length > 0)
      {
        i1 = 0;
        m = i2;
        while (m < k.length)
        {
          i1 += lxz.e(k[m]);
          m += 1;
        }
        m = n + i1 + k.length * 1;
      }
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     jem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */