public final class jqf
  extends lyb<jqf>
{
  private static volatile jqf[] g;
  public Integer a = null;
  public String b = null;
  public String c = null;
  public Boolean d = null;
  public String e = null;
  public String f = null;
  
  public jqf()
  {
    eD = null;
    eE = -1;
  }
  
  public static jqf[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new jqf[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    paramlxz.a(3, c);
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
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
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    j += lxz.b(3, c);
    i = j;
    if (d != null)
    {
      d.booleanValue();
      i = j + (lxz.f(4) + 1);
    }
    j = i;
    if (e != null) {
      j = i + lxz.b(5, e);
    }
    i = j;
    if (f != null) {
      i = j + lxz.b(6, f);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jqf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */