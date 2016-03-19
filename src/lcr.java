public final class lcr
  extends lyb<lcr>
{
  private static volatile lcr[] k;
  public Float a = null;
  public lcj b = null;
  public lcj c = null;
  public lcj d = null;
  public lcs e = null;
  public lcs f = null;
  public lcs g = null;
  public lcq h = null;
  public lcq i = null;
  public lcq j = null;
  
  public lcr()
  {
    eD = null;
    eE = -1;
  }
  
  public static lcr[] d()
  {
    if (k == null) {}
    synchronized (lyf.a)
    {
      if (k == null) {
        k = new lcr[0];
      }
      return k;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.floatValue());
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
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
    int n = super.b();
    int m = n;
    if (a != null)
    {
      a.floatValue();
      m = n + (lxz.f(1) + 4);
    }
    n = m;
    if (b != null) {
      n = m + lxz.d(2, b);
    }
    m = n;
    if (c != null) {
      m = n + lxz.d(3, c);
    }
    n = m;
    if (d != null) {
      n = m + lxz.d(4, d);
    }
    m = n;
    if (e != null) {
      m = n + lxz.d(5, e);
    }
    n = m;
    if (f != null) {
      n = m + lxz.d(6, f);
    }
    m = n;
    if (g != null) {
      m = n + lxz.d(7, g);
    }
    n = m;
    if (h != null) {
      n = m + lxz.d(8, h);
    }
    m = n;
    if (i != null) {
      m = n + lxz.d(9, i);
    }
    n = m;
    if (j != null) {
      n = m + lxz.d(10, j);
    }
    return n;
  }
}

/* Location:
 * Qualified Name:     lcr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */