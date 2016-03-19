public final class jvg
  extends lyb<jvg>
{
  private static volatile jvg[] g;
  public int a = Integer.MIN_VALUE;
  public Integer b = null;
  public jvh c = null;
  public int d = Integer.MIN_VALUE;
  public int e = Integer.MIN_VALUE;
  public jvi f = null;
  
  public jvg()
  {
    eD = null;
    eE = -1;
  }
  
  public static jvg[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new jvg[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != Integer.MIN_VALUE) {
      paramlxz.a(4, d);
    }
    if (e != Integer.MIN_VALUE) {
      paramlxz.a(5, e);
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
    if (a != Integer.MIN_VALUE) {
      i = j + lxz.e(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(2, b.intValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    j = i;
    if (d != Integer.MIN_VALUE) {
      j = i + lxz.e(4, d);
    }
    i = j;
    if (e != Integer.MIN_VALUE) {
      i = j + lxz.e(5, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.d(6, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jvg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */