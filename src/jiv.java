public final class jiv
  extends lyb<jiv>
{
  private static volatile jiv[] g;
  public String a = null;
  public jir b = null;
  public Integer c = null;
  public jit d = null;
  public jiw e = null;
  public jis f = null;
  
  public jiv()
  {
    eD = null;
    eE = -1;
  }
  
  public static jiv[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new jiv[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
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
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(5, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.d(6, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jiv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */