public final class kly
  extends lyb<kly>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public Integer d = null;
  public Long e = null;
  public Boolean f = null;
  public String g = null;
  public Integer h = null;
  public Boolean i = null;
  
  public kly()
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
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.b(5, e.longValue());
    }
    if (f != null) {
      paramlxz.a(6, f.booleanValue());
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h.intValue());
    }
    if (i != null) {
      paramlxz.a(9, i.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int j = k;
    if (a != null) {
      j = k + lxz.b(1, a);
    }
    k = j;
    if (b != null) {
      k = j + lxz.b(2, b);
    }
    j = k;
    if (c != null) {
      j = k + lxz.b(3, c);
    }
    k = j;
    if (d != null) {
      k = j + lxz.e(4, d.intValue());
    }
    j = k;
    if (e != null) {
      j = k + lxz.e(5, e.longValue());
    }
    k = j;
    if (f != null)
    {
      f.booleanValue();
      k = j + (lxz.f(6) + 1);
    }
    j = k;
    if (g != null) {
      j = k + lxz.b(7, g);
    }
    k = j;
    if (h != null) {
      k = j + lxz.e(8, h.intValue());
    }
    j = k;
    if (i != null)
    {
      i.booleanValue();
      j = k + (lxz.f(9) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kly
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */