public final class lno
  extends lyb<lno>
{
  private static volatile lno[] b;
  public lmo a = null;
  
  public lno()
  {
    eD = null;
    eE = -1;
  }
  
  public static lno[] d()
  {
    if (b == null) {}
    synchronized (lyf.a)
    {
      if (b == null) {
        b = new lno[0];
      }
      return b;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lno
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */