public final class jvx
  extends lyb<jvx>
{
  private static volatile jvx[] d;
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  
  public jvx()
  {
    eD = null;
    eE = -1;
  }
  
  public static jvx[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new jvx[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.intValue());
    paramlxz.a(2, b.intValue());
    paramlxz.a(3, c.intValue());
    super.a(paramlxz);
  }
  
  protected int b()
  {
    return super.b() + lxz.e(1, a.intValue()) + lxz.e(2, b.intValue()) + lxz.e(3, c.intValue());
  }
}

/* Location:
 * Qualified Name:     jvx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */