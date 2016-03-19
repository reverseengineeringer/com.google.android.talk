public final class ixi
  extends lyb<ixi>
{
  private static volatile ixi[] e;
  public ixc a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  
  public ixi()
  {
    eD = null;
    eE = -1;
  }
  
  public static ixi[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new ixi[0];
      }
      return e;
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
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (c != null) {
      paramlxz.a(4, c);
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
    if (d != null) {
      i = j + lxz.b(3, d);
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(4, c);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     ixi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */