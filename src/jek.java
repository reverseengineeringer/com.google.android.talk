public final class jek
  extends lyb<jek>
{
  private static volatile jek[] k;
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public String h = null;
  public Integer i = null;
  public jel j = null;
  
  public jek()
  {
    eD = null;
    eE = -1;
  }
  
  public static jek[] d()
  {
    if (k == null) {}
    synchronized (lyf.a)
    {
      if (k == null) {
        k = new jek[0];
      }
      return k;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, b);
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
      paramlxz.a(5, f);
    }
    if (h != null) {
      paramlxz.a(6, h);
    }
    if (i != null) {
      paramlxz.a(7, i.intValue());
    }
    if (g != null) {
      paramlxz.a(8, g);
    }
    if (a != null) {
      paramlxz.a(9, a);
    }
    if (j != null) {
      paramlxz.b(10, j);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = super.b() + lxz.b(1, b);
    int m = n;
    if (c != null) {
      m = n + lxz.b(2, c);
    }
    n = m;
    if (d != null) {
      n = m + lxz.b(3, d);
    }
    m = n;
    if (e != null) {
      m = n + lxz.b(4, e);
    }
    n = m;
    if (f != null) {
      n = m + lxz.b(5, f);
    }
    m = n;
    if (h != null) {
      m = n + lxz.b(6, h);
    }
    n = m;
    if (i != null) {
      n = m + lxz.e(7, i.intValue());
    }
    m = n;
    if (g != null) {
      m = n + lxz.b(8, g);
    }
    n = m;
    if (a != null) {
      n = m + lxz.b(9, a);
    }
    m = n;
    if (j != null) {
      m = n + lxz.d(10, j);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     jek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */