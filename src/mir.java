public final class mir
  extends lyb<mir>
{
  private static volatile mir[] k;
  public String a = null;
  public String b = null;
  public mis c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public mks g = null;
  public String h = null;
  public String i = null;
  public String j = null;
  
  public mir()
  {
    eD = null;
    eE = -1;
  }
  
  public static mir[] d()
  {
    if (k == null) {}
    synchronized (lyf.a)
    {
      if (k == null) {
        k = new mir[0];
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
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (g != null) {
      paramlxz.b(6, g);
    }
    if (h != null) {
      paramlxz.a(7, h);
    }
    if (i != null) {
      paramlxz.a(8, i);
    }
    if (f != null) {
      paramlxz.a(9, f);
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
      m = n + lxz.d(3, c);
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
    if (g != null) {
      n = m + lxz.d(6, g);
    }
    m = n;
    if (h != null) {
      m = n + lxz.b(7, h);
    }
    n = m;
    if (i != null) {
      n = m + lxz.b(8, i);
    }
    m = n;
    if (f != null) {
      m = n + lxz.b(9, f);
    }
    n = m;
    if (j != null) {
      n = m + lxz.b(10, j);
    }
    return n;
  }
}

/* Location:
 * Qualified Name:     mir
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */