public final class kiu
  extends lyb<kiu>
{
  private static volatile kiu[] j;
  public Integer a = null;
  public Integer b = null;
  public String c = null;
  public Integer d = null;
  public Integer e = null;
  public Integer f = null;
  public String g = null;
  public Integer h = null;
  public Integer i = null;
  
  public kiu()
  {
    eD = null;
    eE = -1;
  }
  
  public static kiu[] d()
  {
    if (j == null) {}
    synchronized (lyf.a)
    {
      if (j == null) {
        j = new kiu[0];
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
      paramlxz.a(2, b.intValue());
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
      paramlxz.a(6, f.intValue());
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h.intValue());
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
      m = k + lxz.e(2, b.intValue());
    }
    k = m;
    if (c != null) {
      k = m + lxz.b(3, c);
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
      m = k + lxz.e(6, f.intValue());
    }
    k = m;
    if (g != null) {
      k = m + lxz.b(7, g);
    }
    m = k;
    if (h != null) {
      m = k + lxz.e(8, h.intValue());
    }
    k = m;
    if (i != null) {
      k = m + lxz.e(9, i.intValue());
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     kiu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */