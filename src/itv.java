public final class itv
  extends lyb<itv>
{
  private static volatile itv[] b;
  public Integer a = null;
  
  public itv()
  {
    eD = null;
    eE = -1;
  }
  
  public static itv[] d()
  {
    if (b == null) {}
    synchronized (lyf.a)
    {
      if (b == null) {
        b = new itv[0];
      }
      return b;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
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
    return i;
  }
}

/* Location:
 * Qualified Name:     itv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */