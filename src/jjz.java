public final class jjz
  extends lyb<jjz>
{
  private static volatile jjz[] j;
  public Integer a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public Integer h = null;
  public jjy[] i = jjy.d();
  
  public jjz()
  {
    eD = null;
    eE = -1;
  }
  
  public static jjz[] d()
  {
    if (j == null) {}
    synchronized (lyf.a)
    {
      if (j == null) {
        j = new jjz[0];
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
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if ((i != null) && (i.length > 0))
    {
      int k = 0;
      while (k < i.length)
      {
        jjy localjjy = i[k];
        if (localjjy != null) {
          paramlxz.b(7, localjjy);
        }
        k += 1;
      }
    }
    if (g != null) {
      paramlxz.a(8, g);
    }
    if (h != null) {
      paramlxz.a(9, h.intValue());
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
    int n = m;
    if (e != null) {
      n = m + lxz.b(5, e);
    }
    k = n;
    if (f != null) {
      k = n + lxz.b(6, f);
    }
    m = k;
    if (i != null)
    {
      m = k;
      if (i.length > 0)
      {
        m = 0;
        while (m < i.length)
        {
          jjy localjjy = i[m];
          n = k;
          if (localjjy != null) {
            n = k + lxz.d(7, localjjy);
          }
          m += 1;
          k = n;
        }
        m = k;
      }
    }
    k = m;
    if (g != null) {
      k = m + lxz.b(8, g);
    }
    m = k;
    if (h != null) {
      m = k + lxz.e(9, h.intValue());
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     jjz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */