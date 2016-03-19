public final class itp
  extends lyb<itp>
{
  private static volatile itp[] b;
  public int a = Integer.MIN_VALUE;
  
  public itp()
  {
    eD = null;
    eE = -1;
  }
  
  public static itp[] d()
  {
    if (b == null) {}
    synchronized (lyf.a)
    {
      if (b == null) {
        b = new itp[0];
      }
      return b;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
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
    return i;
  }
}

/* Location:
 * Qualified Name:     itp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */