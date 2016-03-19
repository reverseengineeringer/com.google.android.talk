public final class jbj
  extends lyb<jbj>
{
  private static volatile jbj[] c;
  public String a = null;
  public String b = null;
  
  public jbj()
  {
    eD = null;
    eE = -1;
  }
  
  public static jbj[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new jbj[0];
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
 * Qualified Name:     jbj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */