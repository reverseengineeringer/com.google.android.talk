public final class jfm
  extends lyb<jfm>
{
  private static volatile jfm[] o;
  public String a = null;
  public String b = null;
  public String c = null;
  public jlb d = null;
  public jhf e = null;
  public meo f = null;
  public String g = null;
  public Long h = null;
  public Long i = null;
  public jgb j = null;
  public int k = Integer.MIN_VALUE;
  public int l = Integer.MIN_VALUE;
  public String m = null;
  public jgw n = null;
  
  public jfm()
  {
    eD = null;
    eE = -1;
  }
  
  public static jfm[] d()
  {
    if (o == null) {}
    synchronized (lyf.a)
    {
      if (o == null) {
        o = new jfm[0];
      }
      return o;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    paramlxz.a(2, b);
    paramlxz.a(3, g);
    if (j != null) {
      paramlxz.b(4, j);
    }
    if (k != Integer.MIN_VALUE) {
      paramlxz.a(5, k);
    }
    if (l != Integer.MIN_VALUE) {
      paramlxz.a(6, l);
    }
    if (m != null) {
      paramlxz.a(7, m);
    }
    if (n != null) {
      paramlxz.b(8, n);
    }
    if (c != null) {
      paramlxz.a(9, c);
    }
    if (h != null) {
      paramlxz.b(10, h.longValue());
    }
    if (i != null) {
      paramlxz.b(11, i.longValue());
    }
    if (d != null) {
      paramlxz.b(12, d);
    }
    if (e != null) {
      paramlxz.b(13, e);
    }
    if (f != null) {
      paramlxz.b(14, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b() + lxz.b(1, a) + lxz.b(2, b) + lxz.b(3, g);
    int i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.d(4, j);
    }
    i2 = i1;
    if (k != Integer.MIN_VALUE) {
      i2 = i1 + lxz.e(5, k);
    }
    i1 = i2;
    if (l != Integer.MIN_VALUE) {
      i1 = i2 + lxz.e(6, l);
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.b(7, m);
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.d(8, n);
    }
    i2 = i1;
    if (c != null) {
      i2 = i1 + lxz.b(9, c);
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.e(10, h.longValue());
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.e(11, i.longValue());
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.d(12, d);
    }
    i2 = i1;
    if (e != null) {
      i2 = i1 + lxz.d(13, e);
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.d(14, f);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     jfm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */