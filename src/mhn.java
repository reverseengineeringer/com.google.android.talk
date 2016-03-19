public final class mhn
  extends lyb<mhn>
{
  private static volatile mhn[] d;
  public Long a = null;
  public String b = null;
  public String c = null;
  
  public mhn()
  {
    eD = null;
    eE = -1;
  }
  
  public static mhn[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new mhn[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.b(1, a.longValue());
    paramlxz.a(2, b);
    paramlxz.a(3, c);
    super.a(paramlxz);
  }
  
  protected int b()
  {
    return super.b() + lxz.e(1, a.longValue()) + lxz.b(2, b) + lxz.b(3, c);
  }
}

/* Location:
 * Qualified Name:     mhn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */