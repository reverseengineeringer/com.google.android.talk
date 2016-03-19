public final class iws
  extends lyb<iws>
{
  private static volatile iws[] e;
  public String a = null;
  public String b = null;
  public ixc c = null;
  public Integer d = null;
  
  public iws()
  {
    eD = null;
    eE = -1;
  }
  
  public static iws[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new iws[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (c != null) {
      paramlxz.b(1, c);
    }
    if (a != null) {
      paramlxz.a(2, a);
    }
    if (b != null) {
      paramlxz.a(3, b);
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (c != null) {
      i = j + lxz.d(1, c);
    }
    j = i;
    if (a != null) {
      j = i + lxz.b(2, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(3, b);
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     iws
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */