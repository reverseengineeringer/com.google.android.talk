public final class kjm
  extends lyb<kjm>
{
  private static volatile kjm[] j;
  public Integer a = null;
  public Integer b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public kjn h = null;
  public kjs i = null;
  
  public kjm()
  {
    eD = null;
    eE = -1;
  }
  
  public static kjm[] d()
  {
    if (j == null) {}
    synchronized (lyf.a)
    {
      if (j == null) {
        j = new kjm[0];
      }
      return j;
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
      paramlxz.b(8, h);
    }
    if (i != null) {
      paramlxz.b(9, i);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = super.b();
    int k = m;
    if (a != null) {
      k = m + lxz.e(1, a.intValue());
    }
    m = k;
    if (b != null) {
      m = k + lxz.e(2, b.intValue());
    }
    k = m;
    if (c != null) {
      k = m + lxz.b(3, c);
    }
    m = k;
    if (d != null) {
      m = k + lxz.b(4, d);
    }
    k = m;
    if (e != null) {
      k = m + lxz.b(5, e);
    }
    m = k;
    if (f != null) {
      m = k + lxz.b(6, f);
    }
    k = m;
    if (g != null) {
      k = m + lxz.b(7, g);
    }
    m = k;
    if (h != null) {
      m = k + lxz.d(8, h);
    }
    k = m;
    if (i != null) {
      k = m + lxz.d(9, i);
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     kjm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */