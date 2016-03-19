public final class ldb
  extends lyb<ldb>
{
  private static volatile ldb[] e;
  public int a = Integer.MIN_VALUE;
  public ldk b = null;
  public ldc c = null;
  public ldd d = null;
  
  public ldb()
  {
    eD = null;
    eE = -1;
  }
  
  public static ldb[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new ldb[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != Integer.MIN_VALUE) {
      i = j + lxz.e(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     ldb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */