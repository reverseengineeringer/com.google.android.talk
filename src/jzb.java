public final class jzb
  extends lyb<jzb>
{
  public Boolean a = null;
  public Boolean b = null;
  public Boolean c = null;
  public Boolean d = null;
  public String e = null;
  public Boolean f = null;
  public Integer g = null;
  public byte[] h = null;
  public Integer i = null;
  public Integer j = null;
  public Integer k = null;
  public Boolean l = null;
  
  public jzb()
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
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f.booleanValue());
    }
    if (g != null) {
      paramlxz.a(7, g.intValue());
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
    if (k != null) {
      paramlxz.a(11, k.intValue());
    }
    if (l != null) {
      paramlxz.a(12, l.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = super.b();
    int m = n;
    if (a != null)
    {
      a.booleanValue();
      m = n + (lxz.f(1) + 1);
    }
    n = m;
    if (b != null)
    {
      b.booleanValue();
      n = m + (lxz.f(2) + 1);
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
    if (e != null) {
      m = n + lxz.b(5, e);
    }
    n = m;
    if (f != null)
    {
      f.booleanValue();
      n = m + (lxz.f(6) + 1);
    }
    m = n;
    if (g != null) {
      m = n + lxz.e(7, g.intValue());
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
    m = n;
    if (k != null) {
      m = n + lxz.e(11, k.intValue());
    }
    n = m;
    if (l != null)
    {
      l.booleanValue();
      n = m + (lxz.f(12) + 1);
    }
    return n;
  }
}

/* Location:
 * Qualified Name:     jzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */