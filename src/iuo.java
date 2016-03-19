public final class iuo
  extends lyb<iuo>
{
  public iut a = null;
  public lyu b = null;
  public iuq c = null;
  public Long d = null;
  public String e = null;
  public iup f = null;
  public String g = null;
  public Boolean h = null;
  public int i = Integer.MIN_VALUE;
  public ius j = null;
  
  public iuo()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d.longValue());
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h.booleanValue());
    }
    if (i != Integer.MIN_VALUE) {
      paramlxz.a(9, i);
    }
    if (j != null) {
      paramlxz.b(10, j);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = super.b();
    int k = m;
    if (a != null) {
      k = m + lxz.d(1, a);
    }
    m = k;
    if (b != null) {
      m = k + lxz.d(2, b);
    }
    k = m;
    if (c != null) {
      k = m + lxz.d(3, c);
    }
    m = k;
    if (d != null) {
      m = k + lxz.e(4, d.longValue());
    }
    k = m;
    if (e != null) {
      k = m + lxz.b(5, e);
    }
    m = k;
    if (f != null) {
      m = k + lxz.d(6, f);
    }
    k = m;
    if (g != null) {
      k = m + lxz.b(7, g);
    }
    m = k;
    if (h != null)
    {
      h.booleanValue();
      m = k + (lxz.f(8) + 1);
    }
    k = m;
    if (i != Integer.MIN_VALUE) {
      k = m + lxz.e(9, i);
    }
    m = k;
    if (j != null) {
      m = k + lxz.d(10, j);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     iuo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */