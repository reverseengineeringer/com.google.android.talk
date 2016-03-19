public final class jlf
  extends lyb<jlf>
{
  private static volatile jlf[] d;
  public String a = null;
  public String b = null;
  public String c = null;
  
  public jlf()
  {
    eD = null;
    eE = -1;
  }
  
  public static jlf[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new jlf[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    paramlxz.a(2, b);
    if (c != null) {
      paramlxz.a(3, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(1, a) + lxz.b(2, b);
    int i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jlf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */