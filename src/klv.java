public final class klv
  extends lyb<klv>
{
  private static volatile klv[] c;
  public Integer a = null;
  public Long b = null;
  
  public klv()
  {
    eD = null;
    eE = -1;
  }
  
  public static klv[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new klv[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.b(2, b.longValue());
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
      j = i + lxz.e(2, b.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     klv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */