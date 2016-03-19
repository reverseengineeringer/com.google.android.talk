public final class llo
  extends lyb<llo>
{
  private static volatile llo[] k;
  public lme a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public lkt f = null;
  public lmc g = null;
  public lmd h = null;
  public lmd i = null;
  public lmb j = null;
  
  public llo()
  {
    eD = null;
    eE = -1;
  }
  
  public static llo[] d()
  {
    if (k == null) {}
    synchronized (lyf.a)
    {
      if (k == null) {
        k = new llo[0];
      }
      return k;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b);
    }
    if (c != null) {
      paramlxz.a(2, c);
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (e != null) {
      paramlxz.a(4, e);
    }
    if (f != null) {
      paramlxz.b(5, f);
    }
    if (a != null) {
      paramlxz.b(6, a);
    }
    if (g != null) {
      paramlxz.b(8, g);
    }
    if (h != null) {
      paramlxz.b(10, h);
    }
    if (j != null) {
      paramlxz.b(11, j);
    }
    if (i != null) {
      paramlxz.b(12, i);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = super.b();
    int m = n;
    if (b != null) {
      m = n + lxz.b(1, b);
    }
    n = m;
    if (c != null) {
      n = m + lxz.b(2, c);
    }
    m = n;
    if (d != null) {
      m = n + lxz.b(3, d);
    }
    n = m;
    if (e != null) {
      n = m + lxz.b(4, e);
    }
    m = n;
    if (f != null) {
      m = n + lxz.d(5, f);
    }
    n = m;
    if (a != null) {
      n = m + lxz.d(6, a);
    }
    m = n;
    if (g != null) {
      m = n + lxz.d(8, g);
    }
    n = m;
    if (h != null) {
      n = m + lxz.d(10, h);
    }
    m = n;
    if (j != null) {
      m = n + lxz.d(11, j);
    }
    n = m;
    if (i != null) {
      n = m + lxz.d(12, i);
    }
    return n;
  }
}

/* Location:
 * Qualified Name:     llo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */