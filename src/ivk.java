public final class ivk
  extends lyb<ivk>
{
  private static volatile ivk[] d;
  public ixc a = null;
  public String b = null;
  public Integer c = null;
  
  public ivk()
  {
    eD = null;
    eE = -1;
  }
  
  public static ivk[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new ivk[0];
      }
      return d;
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
      paramlxz.a(3, c.intValue());
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
      i = j + lxz.e(3, c.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     ivk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */