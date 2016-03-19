public final class jgk
  extends lyb<jgk>
{
  private static volatile jgk[] b;
  public String a = null;
  
  public jgk()
  {
    eD = null;
    eE = -1;
  }
  
  public static jgk[] d()
  {
    if (b == null) {}
    synchronized (lyf.a)
    {
      if (b == null) {
        b = new jgk[0];
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
 * Qualified Name:     jgk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */