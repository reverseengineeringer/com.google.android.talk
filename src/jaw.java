public final class jaw
  extends lyb<jaw>
{
  private static volatile jaw[] n;
  public jbn a = null;
  public jbn b = null;
  public Integer c = null;
  public Double d = null;
  public Double e = null;
  public Long f = null;
  public Integer g = null;
  public String h = null;
  public String i = null;
  public String j = null;
  public String k = null;
  public Long l = null;
  public jav[] m = jav.d();
  
  public jaw()
  {
    eD = null;
    eE = -1;
  }
  
  public static jaw[] d()
  {
    if (n == null) {}
    synchronized (lyf.a)
    {
      if (n == null) {
        n = new jaw[0];
      }
      return n;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (c != null) {
      paramlxz.a(2, c.intValue());
    }
    if (d != null) {
      paramlxz.a(3, d.doubleValue());
    }
    if (e != null) {
      paramlxz.a(4, e.doubleValue());
    }
    if (f != null) {
      paramlxz.b(5, f.longValue());
    }
    if (g != null) {
      paramlxz.a(6, g.intValue());
    }
    if (h != null) {
      paramlxz.a(7, h);
    }
    if (i != null) {
      paramlxz.a(8, i);
    }
    if (j != null) {
      paramlxz.a(9, j);
    }
    if (k != null) {
      paramlxz.a(10, k);
    }
    if (l != null) {
      paramlxz.b(11, l.longValue());
    }
    if (a != null) {
      paramlxz.b(12, a);
    }
    if (b != null) {
      paramlxz.b(13, b);
    }
    if ((m != null) && (m.length > 0))
    {
      int i1 = 0;
      while (i1 < m.length)
      {
        jav localjav = m[i1];
        if (localjav != null) {
          paramlxz.b(14, localjav);
        }
        i1 += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.e(2, c.intValue());
    }
    i2 = i1;
    if (d != null)
    {
      d.doubleValue();
      i2 = i1 + (lxz.f(3) + 8);
    }
    i1 = i2;
    if (e != null)
    {
      e.doubleValue();
      i1 = i2 + (lxz.f(4) + 8);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.e(5, f.longValue());
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.e(6, g.intValue());
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.b(7, h);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.b(8, i);
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.b(9, j);
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.b(10, k);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.e(11, l.longValue());
    }
    int i3 = i2;
    if (a != null) {
      i3 = i2 + lxz.d(12, a);
    }
    i1 = i3;
    if (b != null) {
      i1 = i3 + lxz.d(13, b);
    }
    i2 = i1;
    if (m != null)
    {
      i2 = i1;
      if (m.length > 0)
      {
        i2 = 0;
        while (i2 < m.length)
        {
          jav localjav = m[i2];
          i3 = i1;
          if (localjav != null) {
            i3 = i1 + lxz.d(14, localjav);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     jaw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */