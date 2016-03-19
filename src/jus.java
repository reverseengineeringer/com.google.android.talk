public final class jus
  extends lyb<jus>
{
  private static volatile jus[] c;
  public String a = null;
  public String b = null;
  
  public jus()
  {
    eD = null;
    eE = -1;
  }
  
  public static jus[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new jus[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(6, a);
    if (b != null) {
      paramlxz.a(7, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(6, a);
    int i = j;
    if (b != null) {
      i = j + lxz.b(7, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */