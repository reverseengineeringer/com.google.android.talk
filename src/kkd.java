public final class kkd
  extends lyb<kkd>
{
  private static volatile kkd[] b;
  public String a = null;
  
  public kkd()
  {
    eD = null;
    eE = -1;
  }
  
  public static kkd[] d()
  {
    if (b == null) {}
    synchronized (lyf.a)
    {
      if (b == null) {
        b = new kkd[0];
      }
      return b;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
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
    return i;
  }
}

/* Location:
 * Qualified Name:     kkd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */