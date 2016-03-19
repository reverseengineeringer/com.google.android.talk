public final class lqf
  extends lyb<lqf>
{
  private static volatile lqf[] h;
  public Integer a = null;
  public lqh b = null;
  public String c = null;
  public String d = null;
  public lof e = null;
  public lql f = null;
  public Integer g = null;
  
  public lqf()
  {
    eD = null;
    eE = -1;
  }
  
  public static lqf[] d()
  {
    if (h == null) {}
    synchronized (lyf.a)
    {
      if (h == null) {
        h = new lqf[0];
      }
      return h;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(4, c);
    }
    if (d != null) {
      paramlxz.a(5, d);
    }
    if (e != null) {
      paramlxz.b(6, e);
    }
    if (f != null) {
      paramlxz.b(7, f);
    }
    if (g != null) {
      paramlxz.a(8, g.intValue());
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
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(4, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(5, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(6, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.d(7, f);
    }
    i = j;
    if (g != null) {
      i = j + lxz.e(8, g.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lqf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */