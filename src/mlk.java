public final class mlk
  extends lyb<mlk>
{
  private static volatile mlk[] b;
  public String a = null;
  
  public mlk()
  {
    eD = null;
    eE = -1;
  }
  
  public static mlk[] d()
  {
    if (b == null) {}
    synchronized (lyf.a)
    {
      if (b == null) {
        b = new mlk[0];
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
 * Qualified Name:     mlk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */