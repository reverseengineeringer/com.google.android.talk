public final class jpc
  extends lyb<jpc>
{
  private static volatile jpc[] j;
  public String a = null;
  public String b = null;
  public Boolean c = null;
  public Boolean d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public jpd h = null;
  public Boolean i = null;
  
  public jpc()
  {
    eD = null;
    eE = -1;
  }
  
  public static jpc[] d()
  {
    if (j == null) {}
    synchronized (lyf.a)
    {
      if (j == null) {
        j = new jpc[0];
      }
      return j;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    paramlxz.a(2, b);
    paramlxz.a(3, c.booleanValue());
    paramlxz.a(4, d.booleanValue());
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.b(8, h);
    }
    if (i != null) {
      paramlxz.a(9, i.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int m = lxz.b(1, a);
    int n = lxz.b(2, b);
    c.booleanValue();
    int i1 = lxz.f(3);
    d.booleanValue();
    m = k + m + n + (i1 + 1) + (lxz.f(4) + 1);
    k = m;
    if (e != null) {
      k = m + lxz.b(5, e);
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
    if (h != null) {
      m = k + lxz.d(8, h);
    }
    k = m;
    if (i != null)
    {
      i.booleanValue();
      k = m + (lxz.f(9) + 1);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     jpc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */