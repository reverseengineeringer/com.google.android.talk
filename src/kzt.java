public final class kzt
  extends lyb<kzt>
{
  private static volatile kzt[] g;
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  public Integer d = null;
  public Integer e = null;
  public String f = null;
  
  public kzt()
  {
    eD = null;
    eE = -1;
  }
  
  public static kzt[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new kzt[0];
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
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
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
      j = i + lxz.e(2, b.intValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.intValue());
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(5, e.intValue());
    }
    j = i;
    if (f != null) {
      j = i + lxz.b(6, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kzt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */