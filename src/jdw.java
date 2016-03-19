public final class jdw
  extends lyb<jdw>
{
  private static volatile jdw[] o;
  public String a = null;
  public String b = null;
  public String c = null;
  public jix d = null;
  public jiq e = null;
  public mem f = null;
  public String g = null;
  public Long h = null;
  public Long i = null;
  public jek j = null;
  public Integer k = null;
  public Integer l = null;
  public String m = null;
  public jgq n = null;
  
  public jdw()
  {
    eD = null;
    eE = -1;
  }
  
  public static jdw[] d()
  {
    if (o == null) {}
    synchronized (lyf.a)
    {
      if (o == null) {
        o = new jdw[0];
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
    if (k != null) {
      paramlxz.a(5, k.intValue());
    }
    if (l != null) {
      paramlxz.a(6, l.intValue());
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
    if (k != null) {
      i2 = i1 + lxz.e(5, k.intValue());
    }
    i1 = i2;
    if (l != null) {
      i1 = i2 + lxz.e(6, l.intValue());
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
 * Qualified Name:     jdw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */