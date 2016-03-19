public final class kcn
  extends lyb<kcn>
{
  private static volatile kcn[] d;
  public String a = null;
  public Long b = null;
  public Integer c = null;
  
  public kcn()
  {
    eD = null;
    eE = -1;
  }
  
  public static kcn[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new kcn[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.longValue());
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
      i = j + lxz.b(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b.longValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kcn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */