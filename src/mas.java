public final class mas
  extends lyb<mas>
{
  private static volatile mas[] c;
  public int a = Integer.MIN_VALUE;
  public String b = null;
  
  public mas()
  {
    eD = null;
    eE = -1;
  }
  
  public static mas[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new mas[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
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
      j = i + lxz.b(2, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mas
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */