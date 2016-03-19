public final class jhu
  extends lyb<jhu>
{
  private static volatile jhu[] j;
  public int a = Integer.MIN_VALUE;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public Integer h = null;
  public jht[] i = jht.d();
  
  public jhu()
  {
    eD = null;
    eE = -1;
  }
  
  public static jhu[] d()
  {
    if (j == null) {}
    synchronized (lyf.a)
    {
      if (j == null) {
        j = new jhu[0];
      }
      return j;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
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
        jht localjht = i[k];
        if (localjht != null) {
          paramlxz.b(7, localjht);
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
    if (a != Integer.MIN_VALUE) {
      k = m + lxz.e(1, a);
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
          jht localjht = i[m];
          n = k;
          if (localjht != null) {
            n = k + lxz.d(7, localjht);
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
 * Qualified Name:     jhu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */