public final class jjk
  extends lyb<jjk>
{
  private static volatile jjk[] c;
  public String a = null;
  public String b = null;
  
  public jjk()
  {
    eD = null;
    eE = -1;
  }
  
  public static jjk[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new jjk[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    paramlxz.a(2, b);
    super.a(paramlxz);
  }
  
  protected int b()
  {
    return super.b() + lxz.b(1, a) + lxz.b(2, b);
  }
}

/* Location:
 * Qualified Name:     jjk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */