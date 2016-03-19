public final class jap
  extends lyb<jap>
{
  public jbo a = null;
  public jbq b = null;
  public jat c = null;
  public jch d = null;
  public jch e = null;
  public String f = null;
  public Boolean g = null;
  public jbh h = null;
  public jca i = null;
  public jby j = null;
  
  public jap()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if (c != null) {
      paramlxz.b(2, c);
    }
    if (d != null) {
      paramlxz.b(3, d);
    }
    if (e != null) {
      paramlxz.b(4, e);
    }
    if (f != null) {
      paramlxz.a(5, f);
    }
    if (h != null) {
      paramlxz.b(6, h);
    }
    if (i != null) {
      paramlxz.b(7, i);
    }
    if (j != null) {
      paramlxz.b(8, j);
    }
    if (a != null) {
      paramlxz.b(9, a);
    }
    if (g != null) {
      paramlxz.a(10, g.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = super.b();
    int k = m;
    if (b != null) {
      k = m + lxz.d(1, b);
    }
    m = k;
    if (c != null) {
      m = k + lxz.d(2, c);
    }
    k = m;
    if (d != null) {
      k = m + lxz.d(3, d);
    }
    m = k;
    if (e != null) {
      m = k + lxz.d(4, e);
    }
    k = m;
    if (f != null) {
      k = m + lxz.b(5, f);
    }
    m = k;
    if (h != null) {
      m = k + lxz.d(6, h);
    }
    k = m;
    if (i != null) {
      k = m + lxz.d(7, i);
    }
    m = k;
    if (j != null) {
      m = k + lxz.d(8, j);
    }
    k = m;
    if (a != null) {
      k = m + lxz.d(9, a);
    }
    m = k;
    if (g != null)
    {
      g.booleanValue();
      m = k + (lxz.f(10) + 1);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     jap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */