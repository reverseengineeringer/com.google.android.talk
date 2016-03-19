public final class joo
  extends lyb<joo>
{
  private static volatile joo[] g;
  public jop a = null;
  public String b = null;
  public String c = null;
  public joe d = null;
  public String e = null;
  public String f = null;
  
  public joo()
  {
    eD = null;
    eE = -1;
  }
  
  public static joo[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new joo[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f);
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
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.b(5, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.b(6, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     joo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */