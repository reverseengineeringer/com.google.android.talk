public final class iuh
  extends lyb<iuh>
{
  public ium a = null;
  public lyt b = null;
  public iuj c = null;
  public Long d = null;
  public String e = null;
  public iui f = null;
  public String g = null;
  public Boolean h = null;
  public Integer i = null;
  public iul j = null;
  
  public iuh()
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
    if (i != null) {
      paramlxz.a(9, i.intValue());
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
    if (i != null) {
      k = m + lxz.e(9, i.intValue());
    }
    m = k;
    if (j != null) {
      m = k + lxz.d(10, j);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     iuh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */