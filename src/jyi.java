public final class jyi
  extends lyb<jyi>
{
  private static volatile jyi[] c;
  public Long a = null;
  public Integer b = null;
  
  public jyi()
  {
    eD = null;
    eE = -1;
  }
  
  public static jyi[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new jyi[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.longValue());
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a.longValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(2, b.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jyi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */