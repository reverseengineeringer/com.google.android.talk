public final class mbc
  extends lyb<mbc>
{
  public static final lyc<lyu, mbc> a = lyc.a(mbc.class, 218917186L);
  private static final mbc[] h = new mbc[0];
  public Double b = null;
  public Double c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public lyu g = null;
  
  public mbc()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b.doubleValue());
    }
    if (c != null) {
      paramlxz.a(2, c.doubleValue());
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (e != null) {
      paramlxz.a(4, e);
    }
    if (f != null) {
      paramlxz.a(5, f);
    }
    if (g != null) {
      paramlxz.b(6, g);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null)
    {
      b.doubleValue();
      i = j + (lxz.f(1) + 8);
    }
    j = i;
    if (c != null)
    {
      c.doubleValue();
      j = i + (lxz.f(2) + 8);
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(3, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.b(4, e);
    }
    i = j;
    if (f != null) {
      i = j + lxz.b(5, f);
    }
    j = i;
    if (g != null) {
      j = i + lxz.d(6, g);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mbc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */