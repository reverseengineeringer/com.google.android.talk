public final class ixk
  extends lyb<ixk>
{
  private static volatile ixk[] d;
  public ixc a = null;
  public String b = null;
  public String c = null;
  
  public ixk()
  {
    eD = null;
    eE = -1;
  }
  
  public static ixk[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new ixk[0];
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
      paramlxz.a(3, c);
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
    return i;
  }
}

/* Location:
 * Qualified Name:     ixk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */