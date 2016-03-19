public final class iwj
  extends lyb<iwj>
{
  private static volatile iwj[] g;
  public ixc a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  
  public iwj()
  {
    eD = null;
    eE = -1;
  }
  
  public static iwj[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new iwj[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (e != null) {
      paramlxz.a(4, e);
    }
    if (d != null) {
      paramlxz.a(5, d);
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    j = i;
    if (e != null) {
      j = i + lxz.b(4, e);
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(5, d);
    }
    j = i;
    if (f != null) {
      j = i + lxz.b(6, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     iwj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */