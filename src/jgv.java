public final class jgv
  extends lyb<jgv>
{
  private static volatile jgv[] f;
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  
  public jgv()
  {
    eD = null;
    eE = -1;
  }
  
  public static jgv[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new jgv[0];
      }
      return f;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    paramlxz.a(2, b);
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
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
    j = i;
    if (d != null) {
      j = i + lxz.b(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.b(5, e);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jgv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */