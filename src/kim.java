public final class kim
  extends lyb<kim>
{
  private static volatile kim[] j;
  public String a = null;
  public String b = null;
  public String[] c = lyo.f;
  public Long d = null;
  public Integer e = null;
  public kik f = null;
  public kio g = null;
  public kin h = null;
  public Boolean i = null;
  
  public kim()
  {
    eD = null;
    eE = -1;
  }
  
  public static kim[] d()
  {
    if (j == null) {}
    synchronized (lyf.a)
    {
      if (j == null) {
        j = new kim[0];
      }
      return j;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int k = 0;
      while (k < c.length)
      {
        String str = c[k];
        if (str != null) {
          paramlxz.a(3, str);
        }
        k += 1;
      }
    }
    if (e != null) {
      paramlxz.a(4, e.intValue());
    }
    if (f != null) {
      paramlxz.b(5, f);
    }
    if (i != null) {
      paramlxz.a(6, i.booleanValue());
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.b(8, h);
    }
    if (d != null) {
      paramlxz.b(9, d.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int k = super.b();
    int m = k;
    if (a != null) {
      m = k + lxz.b(1, a);
    }
    k = m;
    if (b != null) {
      k = m + lxz.b(2, b);
    }
    m = k;
    if (c != null)
    {
      m = k;
      if (c.length > 0)
      {
        int n = 0;
        int i1 = 0;
        m = i2;
        while (m < c.length)
        {
          String str = c[m];
          int i3 = n;
          i2 = i1;
          if (str != null)
          {
            i2 = i1 + 1;
            i3 = n + lxz.a(str);
          }
          m += 1;
          n = i3;
          i1 = i2;
        }
        m = k + n + i1 * 1;
      }
    }
    k = m;
    if (e != null) {
      k = m + lxz.e(4, e.intValue());
    }
    m = k;
    if (f != null) {
      m = k + lxz.d(5, f);
    }
    k = m;
    if (i != null)
    {
      i.booleanValue();
      k = m + (lxz.f(6) + 1);
    }
    m = k;
    if (g != null) {
      m = k + lxz.d(7, g);
    }
    k = m;
    if (h != null) {
      k = m + lxz.d(8, h);
    }
    m = k;
    if (d != null) {
      m = k + lxz.e(9, d.longValue());
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     kim
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */