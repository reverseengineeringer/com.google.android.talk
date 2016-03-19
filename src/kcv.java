public final class kcv
  extends lyb<kcv>
{
  public Boolean a = null;
  public Boolean b = null;
  public jyu[] c = jyu.d();
  public kci d = null;
  public kaz e = null;
  public jyv f = null;
  public jyt g = null;
  public jxd h = null;
  public kfc i = null;
  public kbp j = null;
  
  public kcv()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.booleanValue());
    }
    if (b != null) {
      paramlxz.a(2, b.booleanValue());
    }
    if ((c != null) && (c.length > 0))
    {
      int k = 0;
      while (k < c.length)
      {
        jyu localjyu = c[k];
        if (localjyu != null) {
          paramlxz.b(3, localjyu);
        }
        k += 1;
      }
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.b(8, h);
    }
    if (i != null) {
      paramlxz.b(9, i);
    }
    if (j != null) {
      paramlxz.b(10, j);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int m = k;
    if (a != null)
    {
      a.booleanValue();
      m = k + (lxz.f(1) + 1);
    }
    k = m;
    if (b != null)
    {
      b.booleanValue();
      k = m + (lxz.f(2) + 1);
    }
    m = k;
    if (c != null)
    {
      m = k;
      if (c.length > 0)
      {
        m = 0;
        while (m < c.length)
        {
          jyu localjyu = c[m];
          int n = k;
          if (localjyu != null) {
            n = k + lxz.d(3, localjyu);
          }
          m += 1;
          k = n;
        }
        m = k;
      }
    }
    k = m;
    if (d != null) {
      k = m + lxz.d(4, d);
    }
    m = k;
    if (e != null) {
      m = k + lxz.d(5, e);
    }
    k = m;
    if (f != null) {
      k = m + lxz.d(6, f);
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
    if (i != null) {
      m = k + lxz.d(9, i);
    }
    k = m;
    if (j != null) {
      k = m + lxz.d(10, j);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     kcv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */