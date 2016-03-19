public final class mbd
  extends lyb<mbd>
{
  public static final lyc<lyt, mbd> a = lyc.a(mbd.class, 218917186L);
  private static final mbd[] h = new mbd[0];
  public Double b = null;
  public Double c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public lyt g = null;
  
  public mbd()
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
 * Qualified Name:     mbd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */