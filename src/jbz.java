public final class jbz
  extends lyb<jbz>
{
  private static volatile jbz[] k;
  public String a = null;
  public String b = null;
  public String c = null;
  public Integer d = null;
  public Integer e = null;
  public String f = null;
  public Boolean g = null;
  public String h = null;
  public Integer i = null;
  public Integer j = null;
  
  public jbz()
  {
    eD = null;
    eE = -1;
  }
  
  public static jbz[] d()
  {
    if (k == null) {}
    synchronized (lyf.a)
    {
      if (k == null) {
        k = new jbz[0];
      }
      return k;
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
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g.booleanValue());
    }
    if (h != null) {
      paramlxz.a(8, h);
    }
    if (i != null) {
      paramlxz.a(9, i.intValue());
    }
    if (j != null) {
      paramlxz.a(10, j.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
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
      m = n + lxz.b(3, c);
    }
    n = m;
    if (d != null) {
      n = m + lxz.e(4, d.intValue());
    }
    m = n;
    if (e != null) {
      m = n + lxz.e(5, e.intValue());
    }
    n = m;
    if (f != null) {
      n = m + lxz.b(6, f);
    }
    m = n;
    if (g != null)
    {
      g.booleanValue();
      m = n + (lxz.f(7) + 1);
    }
    n = m;
    if (h != null) {
      n = m + lxz.b(8, h);
    }
    m = n;
    if (i != null) {
      m = n + lxz.e(9, i.intValue());
    }
    n = m;
    if (j != null) {
      n = m + lxz.e(10, j.intValue());
    }
    return n;
  }
}

/* Location:
 * Qualified Name:     jbz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */