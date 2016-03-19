public final class klx
  extends lyb<klx>
{
  private static volatile klx[] j;
  public String a = null;
  public kly b = null;
  public klw c = null;
  public Integer d = null;
  public Integer e = null;
  public Integer f = null;
  public Long g = null;
  public Integer h = null;
  public Long i = null;
  
  public klx()
  {
    eD = null;
    eE = -1;
  }
  
  public static klx[] d()
  {
    if (j == null) {}
    synchronized (lyf.a)
    {
      if (j == null) {
        j = new klx[0];
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
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(5, c);
    }
    if (d != null) {
      paramlxz.a(6, d.intValue());
    }
    if (e != null) {
      paramlxz.a(7, e.intValue());
    }
    if (f != null) {
      paramlxz.a(8, f.intValue());
    }
    if (g != null) {
      paramlxz.a(9, g.longValue());
    }
    if (h != null) {
      paramlxz.a(10, h.intValue());
    }
    if (i != null) {
      paramlxz.a(11, i.longValue());
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
      m = k + lxz.d(2, b);
    }
    k = m;
    if (c != null) {
      k = m + lxz.d(5, c);
    }
    m = k;
    if (d != null) {
      m = k + lxz.e(6, d.intValue());
    }
    k = m;
    if (e != null) {
      k = m + lxz.e(7, e.intValue());
    }
    m = k;
    if (f != null) {
      m = k + lxz.e(8, f.intValue());
    }
    k = m;
    if (g != null) {
      k = m + lxz.d(9, g.longValue());
    }
    m = k;
    if (h != null) {
      m = k + lxz.e(10, h.intValue());
    }
    k = m;
    if (i != null) {
      k = m + lxz.d(11, i.longValue());
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     klx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */