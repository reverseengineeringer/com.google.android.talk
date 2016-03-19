public final class mid
  extends lyb<mid>
{
  private static volatile mid[] j;
  public String a = null;
  public String b = null;
  public Integer c = null;
  public Integer d = null;
  public Integer e = null;
  public Integer f = null;
  public Integer g = null;
  public int h = Integer.MIN_VALUE;
  public mii[] i = mii.d();
  
  public mid()
  {
    eD = null;
    eE = -1;
  }
  
  public static mid[] d()
  {
    if (j == null) {}
    synchronized (lyf.a)
    {
      if (j == null) {
        j = new mid[0];
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
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if (f != null) {
      paramlxz.c(6, f.intValue());
    }
    if (g != null) {
      paramlxz.c(7, g.intValue());
    }
    if (h != Integer.MIN_VALUE) {
      paramlxz.a(8, h);
    }
    if ((i != null) && (i.length > 0))
    {
      int k = 0;
      while (k < i.length)
      {
        mii localmii = i[k];
        if (localmii != null) {
          paramlxz.b(9, localmii);
        }
        k += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = super.b();
    int k = m;
    if (a != null) {
      k = m + lxz.b(1, a);
    }
    m = k;
    if (b != null) {
      m = k + lxz.b(2, b);
    }
    k = m;
    if (c != null) {
      k = m + lxz.e(3, c.intValue());
    }
    m = k;
    if (d != null) {
      m = k + lxz.e(4, d.intValue());
    }
    k = m;
    if (e != null) {
      k = m + lxz.e(5, e.intValue());
    }
    m = k;
    if (f != null) {
      m = k + lxz.f(6, f.intValue());
    }
    int n = m;
    if (g != null) {
      n = m + lxz.f(7, g.intValue());
    }
    k = n;
    if (h != Integer.MIN_VALUE) {
      k = n + lxz.e(8, h);
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
          mii localmii = i[m];
          n = k;
          if (localmii != null) {
            n = k + lxz.d(9, localmii);
          }
          m += 1;
          k = n;
        }
        m = k;
      }
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     mid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */