public final class meh
  extends lyb<meh>
{
  private static volatile meh[] g;
  public int a = Integer.MIN_VALUE;
  public String b = null;
  public mee c = null;
  public meg d = null;
  public mep e = null;
  public mef f = null;
  
  public meh()
  {
    eD = null;
    eE = -1;
  }
  
  public static meh[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new meh[0];
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
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
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
    if (a != Integer.MIN_VALUE) {
      i = j + lxz.e(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
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
 * Qualified Name:     meh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */