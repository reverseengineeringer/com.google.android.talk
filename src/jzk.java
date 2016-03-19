public final class jzk
  extends lyb<jzk>
{
  private static volatile jzk[] d;
  public Integer a = null;
  public Double b = null;
  public String c = null;
  
  public jzk()
  {
    eD = null;
    eE = -1;
  }
  
  public static jzk[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new jzk[0];
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
      paramlxz.a(2, b.doubleValue());
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
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (b != null)
    {
      b.doubleValue();
      j = i + (lxz.f(2) + 8);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jzk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */