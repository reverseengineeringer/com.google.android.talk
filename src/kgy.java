public final class kgy
  extends lyb<kgy>
{
  private static volatile kgy[] l;
  public String a = null;
  public String b = null;
  public Integer c = null;
  public String d = null;
  public String e = null;
  public String[] f = lyo.f;
  public String g = null;
  public Integer h = null;
  public String i = null;
  public String j = null;
  public Integer k = null;
  
  public kgy()
  {
    eD = null;
    eE = -1;
  }
  
  public static kgy[] d()
  {
    if (l == null) {}
    synchronized (lyf.a)
    {
      if (l == null) {
        l = new kgy[0];
      }
      return l;
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
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if ((f != null) && (f.length > 0))
    {
      int m = 0;
      while (m < f.length)
      {
        String str = f[m];
        if (str != null) {
          paramlxz.a(6, str);
        }
        m += 1;
      }
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h.intValue());
    }
    if (i != null) {
      paramlxz.a(9, i);
    }
    if (j != null) {
      paramlxz.a(10, j);
    }
    if (k != null) {
      paramlxz.a(11, k.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i3 = 0;
    int n = super.b();
    int m = n;
    if (a != null) {
      m = n + lxz.b(1, a);
    }
    n = m;
    if (b != null) {
      n = m + lxz.b(2, b);
    }
    m = n;
    if (c != null) {
      m = n + lxz.e(3, c.intValue());
    }
    n = m;
    if (d != null) {
      n = m + lxz.b(4, d);
    }
    m = n;
    if (e != null) {
      m = n + lxz.b(5, e);
    }
    n = m;
    if (f != null)
    {
      n = m;
      if (f.length > 0)
      {
        int i1 = 0;
        int i2 = 0;
        n = i3;
        while (n < f.length)
        {
          String str = f[n];
          int i4 = i1;
          i3 = i2;
          if (str != null)
          {
            i3 = i2 + 1;
            i4 = i1 + lxz.a(str);
          }
          n += 1;
          i1 = i4;
          i2 = i3;
        }
        n = m + i1 + i2 * 1;
      }
    }
    m = n;
    if (g != null) {
      m = n + lxz.b(7, g);
    }
    n = m;
    if (h != null) {
      n = m + lxz.e(8, h.intValue());
    }
    m = n;
    if (i != null) {
      m = n + lxz.b(9, i);
    }
    n = m;
    if (j != null) {
      n = m + lxz.b(10, j);
    }
    m = n;
    if (k != null) {
      m = n + lxz.e(11, k.intValue());
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     kgy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */