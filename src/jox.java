public final class jox
  extends lyb<jox>
{
  private static volatile jox[] e;
  public String a = null;
  public jow b = null;
  public jou c = null;
  public joy d = null;
  
  public jox()
  {
    eD = null;
    eE = -1;
  }
  
  public static jox[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new jox[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (c != null) {
      paramlxz.b(2, c);
    }
    if (d != null) {
      paramlxz.b(3, d);
    }
    if (b != null) {
      paramlxz.b(4, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(2, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(3, d);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(4, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */