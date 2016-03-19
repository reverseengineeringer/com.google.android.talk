public final class jao
  extends lyb<jao>
{
  public jcu a = null;
  public jbf b = null;
  public Boolean c = null;
  public Boolean d = null;
  public Boolean e = null;
  public jaq f = null;
  public jci g = null;
  public jcr h = null;
  public String i = null;
  public jcg j = null;
  public Boolean k = null;
  
  public jao()
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
      paramlxz.a(3, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
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
      paramlxz.a(9, i);
    }
    if (j != null) {
      paramlxz.b(10, j);
    }
    if (k != null) {
      paramlxz.a(11, k.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = super.b();
    int m = n;
    if (a != null) {
      m = n + lxz.d(1, a);
    }
    n = m;
    if (b != null) {
      n = m + lxz.d(2, b);
    }
    m = n;
    if (c != null)
    {
      c.booleanValue();
      m = n + (lxz.f(3) + 1);
    }
    n = m;
    if (d != null)
    {
      d.booleanValue();
      n = m + (lxz.f(4) + 1);
    }
    m = n;
    if (e != null)
    {
      e.booleanValue();
      m = n + (lxz.f(5) + 1);
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
      m = n + lxz.b(9, i);
    }
    n = m;
    if (j != null) {
      n = m + lxz.d(10, j);
    }
    m = n;
    if (k != null)
    {
      k.booleanValue();
      m = n + (lxz.f(11) + 1);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     jao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */