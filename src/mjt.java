public final class mjt
  extends lyb<mjt>
{
  private static volatile mjt[] d;
  public mjy a = null;
  public mjr b = null;
  public mju c = null;
  
  public mjt()
  {
    eD = null;
    eE = -1;
  }
  
  public static mjt[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new mjt[0];
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
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(4, c);
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
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(4, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mjt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */