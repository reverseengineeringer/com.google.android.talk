public final class kiw
  extends lyb<kiw>
{
  private static volatile kiw[] d;
  public Integer a = null;
  public String b = null;
  public Integer c = null;
  
  public kiw()
  {
    eD = null;
    eE = -1;
  }
  
  public static kiw[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new kiw[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
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
      i = j + lxz.e(1, a.intValue());
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
 * Qualified Name:     kiw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */