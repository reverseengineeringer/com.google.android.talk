public final class may
  extends lyb<may>
{
  public String a = null;
  public Integer b = null;
  public Integer c = null;
  public Boolean d = null;
  public Boolean e = null;
  public Boolean f = null;
  public String g = null;
  public Integer h = null;
  public mat i = null;
  
  public may()
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
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
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
      paramlxz.b(9, i);
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
      k = j + lxz.e(2, b.intValue());
    }
    j = k;
    if (c != null) {
      j = k + lxz.e(3, c.intValue());
    }
    k = j;
    if (d != null)
    {
      d.booleanValue();
      k = j + (lxz.f(4) + 1);
    }
    j = k;
    if (e != null)
    {
      e.booleanValue();
      j = k + (lxz.f(5) + 1);
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
    if (i != null) {
      j = k + lxz.d(9, i);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     may
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */