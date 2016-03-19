public final class jbk
  extends lyb<jbk>
{
  public jbi a = null;
  public jbu b = null;
  public jak c = null;
  public String d = null;
  public Integer e = null;
  public mjw f = null;
  public Integer g = null;
  public izi h = null;
  public jbl i = null;
  public Boolean j = null;
  public jkn k = null;
  
  public jbk()
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
      paramlxz.b(3, b);
    }
    if (c != null) {
      paramlxz.b(4, c);
    }
    if (d != null) {
      paramlxz.a(5, d);
    }
    if (e != null) {
      paramlxz.a(6, e.intValue());
    }
    if (f != null) {
      paramlxz.b(8, f);
    }
    if (g != null) {
      paramlxz.a(9, g.intValue());
    }
    if (h != null) {
      paramlxz.b(10, h);
    }
    if (i != null) {
      paramlxz.b(11, i);
    }
    if (j != null) {
      paramlxz.a(12, j.booleanValue());
    }
    if (k != null) {
      paramlxz.b(13, k);
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
      n = m + lxz.d(3, b);
    }
    m = n;
    if (c != null) {
      m = n + lxz.d(4, c);
    }
    n = m;
    if (d != null) {
      n = m + lxz.b(5, d);
    }
    m = n;
    if (e != null) {
      m = n + lxz.e(6, e.intValue());
    }
    n = m;
    if (f != null) {
      n = m + lxz.d(8, f);
    }
    m = n;
    if (g != null) {
      m = n + lxz.e(9, g.intValue());
    }
    n = m;
    if (h != null) {
      n = m + lxz.d(10, h);
    }
    m = n;
    if (i != null) {
      m = n + lxz.d(11, i);
    }
    n = m;
    if (j != null)
    {
      j.booleanValue();
      n = m + (lxz.f(12) + 1);
    }
    m = n;
    if (k != null) {
      m = n + lxz.d(13, k);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     jbk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */