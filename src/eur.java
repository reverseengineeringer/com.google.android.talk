public final class eur
  extends lyi
{
  private static volatile eur[] j;
  public eup a = null;
  public String b = "";
  public long c = 0L;
  public long d = 0L;
  public String e = "";
  public String f = "";
  public int g = 0;
  public euq h = null;
  public boolean i = false;
  
  public eur()
  {
    eE = -1;
  }
  
  public static eur[] d()
  {
    if (j == null) {}
    synchronized (lyf.a)
    {
      if (j == null) {
        j = new eur[0];
      }
      return j;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (!b.equals("")) {
      paramlxz.a(2, b);
    }
    if (c != 0L) {
      paramlxz.b(3, c);
    }
    if (d != 0L) {
      paramlxz.b(4, d);
    }
    if (!e.equals("")) {
      paramlxz.a(5, e);
    }
    if (!f.equals("")) {
      paramlxz.a(6, f);
    }
    if (g != 0) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.b(8, h);
    }
    if (i) {
      paramlxz.a(9, i);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = super.b();
    int k = m;
    if (a != null) {
      k = m + lxz.d(1, a);
    }
    m = k;
    if (!b.equals("")) {
      m = k + lxz.b(2, b);
    }
    k = m;
    if (c != 0L) {
      k = m + lxz.e(3, c);
    }
    m = k;
    if (d != 0L) {
      m = k + lxz.e(4, d);
    }
    k = m;
    if (!e.equals("")) {
      k = m + lxz.b(5, e);
    }
    m = k;
    if (!f.equals("")) {
      m = k + lxz.b(6, f);
    }
    k = m;
    if (g != 0) {
      k = m + lxz.e(7, g);
    }
    m = k;
    if (h != null) {
      m = k + lxz.d(8, h);
    }
    k = m;
    if (i) {
      k = m + (lxz.f(9) + 1);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     eur
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */