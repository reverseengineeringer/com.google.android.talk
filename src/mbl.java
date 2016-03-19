public final class mbl
  extends lyb<mbl>
{
  public Long a = null;
  public String b = null;
  public int c = Integer.MIN_VALUE;
  public String d = null;
  public Boolean e = null;
  public String f = null;
  public String g = null;
  public Boolean h = null;
  public Boolean i = null;
  public Boolean j = null;
  
  public mbl()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.b(1, a.longValue());
    paramlxz.a(2, b);
    if (c != Integer.MIN_VALUE) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h.booleanValue());
    }
    if (i != null) {
      paramlxz.a(9, i.booleanValue());
    }
    if (j != null) {
      paramlxz.a(10, j.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = super.b() + lxz.e(1, a.longValue()) + lxz.b(2, b);
    int k = m;
    if (c != Integer.MIN_VALUE) {
      k = m + lxz.e(3, c);
    }
    m = k;
    if (d != null) {
      m = k + lxz.b(4, d);
    }
    k = m;
    if (e != null)
    {
      e.booleanValue();
      k = m + (lxz.f(5) + 1);
    }
    m = k;
    if (f != null) {
      m = k + lxz.b(6, f);
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
    if (i != null)
    {
      i.booleanValue();
      k = m + (lxz.f(9) + 1);
    }
    m = k;
    if (j != null)
    {
      j.booleanValue();
      m = k + (lxz.f(10) + 1);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     mbl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */