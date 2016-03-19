public final class luo
  extends lyb<luo>
{
  public String a = null;
  public Boolean b = null;
  public String c = null;
  public Long d = null;
  public Long e = null;
  public Boolean f = null;
  public Long g = null;
  public String h = null;
  
  public luo()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (c != null) {
      paramlxz.a(2, c);
    }
    if (d != null) {
      paramlxz.c(3, d.longValue());
    }
    if (e != null) {
      paramlxz.c(4, e.longValue());
    }
    if (f != null) {
      paramlxz.a(5, f.booleanValue());
    }
    if (b != null) {
      paramlxz.a(6, b.booleanValue());
    }
    if (g != null) {
      paramlxz.b(7, g.longValue());
    }
    if (h != null) {
      paramlxz.a(8, h);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(2, c);
    }
    i = j;
    if (d != null)
    {
      d.longValue();
      i = j + (lxz.f(3) + 8);
    }
    j = i;
    if (e != null)
    {
      e.longValue();
      j = i + (lxz.f(4) + 8);
    }
    i = j;
    if (f != null)
    {
      f.booleanValue();
      i = j + (lxz.f(5) + 1);
    }
    j = i;
    if (b != null)
    {
      b.booleanValue();
      j = i + (lxz.f(6) + 1);
    }
    i = j;
    if (g != null) {
      i = j + lxz.e(7, g.longValue());
    }
    j = i;
    if (h != null) {
      j = i + lxz.b(8, h);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     luo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */