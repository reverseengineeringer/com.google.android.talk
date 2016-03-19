public final class mgj
  extends lyb<mgj>
{
  private static volatile mgj[] b;
  public Integer a = null;
  
  public mgj()
  {
    eD = null;
    eE = -1;
  }
  
  public static mgj[] d()
  {
    if (b == null) {}
    synchronized (lyf.a)
    {
      if (b == null) {
        b = new mgj[0];
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
 * Qualified Name:     mgj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */