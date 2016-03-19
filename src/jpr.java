public final class jpr
  extends lyb<jpr>
{
  private static volatile jpr[] k;
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public String h = null;
  public Integer i = null;
  public String j = null;
  
  public jpr()
  {
    eD = null;
    eE = -1;
  }
  
  public static jpr[] d()
  {
    if (k == null) {}
    synchronized (lyf.a)
    {
      if (k == null) {
        k = new jpr[0];
      }
      return k;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h);
    }
    if (i != null) {
      paramlxz.a(9, i.intValue());
    }
    if (j != null) {
      paramlxz.a(10, j);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = super.b();
    int m = n;
    if (a != null) {
      m = n + lxz.b(1, a);
    }
    n = m;
    if (b != null) {
      n = m + lxz.b(2, b);
    }
    m = n;
    if (c != null) {
      m = n + lxz.b(3, c);
    }
    n = m;
    if (d != null) {
      n = m + lxz.b(4, d);
    }
    m = n;
    if (e != null) {
      m = n + lxz.b(5, e);
    }
    n = m;
    if (f != null) {
      n = m + lxz.b(6, f);
    }
    m = n;
    if (g != null) {
      m = n + lxz.b(7, g);
    }
    n = m;
    if (h != null) {
      n = m + lxz.b(8, h);
    }
    m = n;
    if (i != null) {
      m = n + lxz.e(9, i.intValue());
    }
    n = m;
    if (j != null) {
      n = m + lxz.b(10, j);
    }
    return n;
  }
}

/* Location:
 * Qualified Name:     jpr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */