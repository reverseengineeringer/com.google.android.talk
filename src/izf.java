public final class izf
  extends lyb<izf>
{
  private static volatile izf[] j;
  public Integer a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public Boolean e = null;
  public izf[] f = d();
  public String g = null;
  public String h = null;
  public Integer i = null;
  
  public izf()
  {
    eD = null;
    eE = -1;
  }
  
  public static izf[] d()
  {
    if (j == null) {}
    synchronized (lyf.a)
    {
      if (j == null) {
        j = new izf[0];
      }
      return j;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
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
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
    }
    if ((f != null) && (f.length > 0))
    {
      int k = 0;
      while (k < f.length)
      {
        izf localizf = f[k];
        if (localizf != null) {
          paramlxz.b(6, localizf);
        }
        k += 1;
      }
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h);
    }
    if (i != null) {
      paramlxz.a(9, i.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = super.b();
    int k = m;
    if (a != null) {
      k = m + lxz.e(1, a.intValue());
    }
    m = k;
    if (b != null) {
      m = k + lxz.b(2, b);
    }
    k = m;
    if (c != null) {
      k = m + lxz.b(3, c);
    }
    m = k;
    if (d != null) {
      m = k + lxz.b(4, d);
    }
    k = m;
    if (e != null)
    {
      e.booleanValue();
      k = m + (lxz.f(5) + 1);
    }
    m = k;
    if (f != null)
    {
      m = k;
      if (f.length > 0)
      {
        m = 0;
        while (m < f.length)
        {
          izf localizf = f[m];
          int n = k;
          if (localizf != null) {
            n = k + lxz.d(6, localizf);
          }
          m += 1;
          k = n;
        }
        m = k;
      }
    }
    k = m;
    if (g != null) {
      k = m + lxz.b(7, g);
    }
    m = k;
    if (h != null) {
      m = k + lxz.b(8, h);
    }
    k = m;
    if (i != null) {
      k = m + lxz.e(9, i.intValue());
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     izf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */