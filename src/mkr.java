public final class mkr
  extends lyb<mkr>
{
  public String a = null;
  public Boolean b = null;
  public Boolean c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public String h = null;
  public String i = null;
  public String j = null;
  
  public mkr()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.booleanValue());
    }
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(8, g);
    }
    if (h != null) {
      paramlxz.a(9, h);
    }
    if (i != null) {
      paramlxz.a(10, i);
    }
    if (j != null) {
      paramlxz.a(11, j);
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
    if (b != null)
    {
      b.booleanValue();
      m = k + (lxz.f(2) + 1);
    }
    k = m;
    if (c != null)
    {
      c.booleanValue();
      k = m + (lxz.f(3) + 1);
    }
    m = k;
    if (d != null) {
      m = k + lxz.b(4, d);
    }
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
      k = m + lxz.b(8, g);
    }
    m = k;
    if (h != null) {
      m = k + lxz.b(9, h);
    }
    k = m;
    if (i != null) {
      k = m + lxz.b(10, i);
    }
    m = k;
    if (j != null) {
      m = k + lxz.b(11, j);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     mkr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */