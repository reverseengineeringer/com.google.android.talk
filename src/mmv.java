public final class mmv
  extends lyb<mmv>
{
  private static volatile mmv[] i;
  public Boolean a = null;
  public Boolean b = null;
  public String c = null;
  public miv d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public mks h = null;
  
  public mmv()
  {
    eD = null;
    eE = -1;
  }
  
  public static mmv[] d()
  {
    if (i == null) {}
    synchronized (lyf.a)
    {
      if (i == null) {
        i = new mmv[0];
      }
      return i;
    }
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
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
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
      paramlxz.b(9, h);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int j = k;
    if (a != null)
    {
      a.booleanValue();
      j = k + (lxz.f(1) + 1);
    }
    k = j;
    if (b != null)
    {
      b.booleanValue();
      k = j + (lxz.f(2) + 1);
    }
    j = k;
    if (c != null) {
      j = k + lxz.b(3, c);
    }
    k = j;
    if (d != null) {
      k = j + lxz.d(4, d);
    }
    j = k;
    if (e != null) {
      j = k + lxz.b(5, e);
    }
    k = j;
    if (f != null) {
      k = j + lxz.b(6, f);
    }
    j = k;
    if (g != null) {
      j = k + lxz.b(7, g);
    }
    k = j;
    if (h != null) {
      k = j + lxz.d(9, h);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     mmv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */