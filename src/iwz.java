public final class iwz
  extends lyb<iwz>
{
  private static volatile iwz[] r;
  public ixc a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public String h = null;
  public String i = null;
  public Integer j = null;
  public String k = null;
  public String l = null;
  public Long m = null;
  public Long n = null;
  public Boolean o = null;
  public Long p = null;
  public Long q = null;
  
  public iwz()
  {
    eD = null;
    eE = -1;
  }
  
  public static iwz[] d()
  {
    if (r == null) {}
    synchronized (lyf.a)
    {
      if (r == null) {
        r = new iwz[0];
      }
      return r;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
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
      paramlxz.a(9, i);
    }
    if (j != null) {
      paramlxz.a(10, j.intValue());
    }
    if (m != null) {
      paramlxz.b(11, m.longValue());
    }
    if (n != null) {
      paramlxz.b(12, n.longValue());
    }
    if (o != null) {
      paramlxz.a(13, o.booleanValue());
    }
    if (p != null) {
      paramlxz.b(14, p.longValue());
    }
    if (q != null) {
      paramlxz.b(15, q.longValue());
    }
    if (k != null) {
      paramlxz.a(16, k);
    }
    if (l != null) {
      paramlxz.a(17, l);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.d(1, a);
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.b(2, b);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.b(3, c);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.b(4, d);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(5, e);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.b(6, f);
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.b(7, g);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.b(8, h);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.b(9, i);
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.e(10, j.intValue());
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.e(11, m.longValue());
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.e(12, n.longValue());
    }
    i1 = i2;
    if (o != null)
    {
      o.booleanValue();
      i1 = i2 + (lxz.f(13) + 1);
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.e(14, p.longValue());
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + lxz.e(15, q.longValue());
    }
    i2 = i1;
    if (k != null) {
      i2 = i1 + lxz.b(16, k);
    }
    i1 = i2;
    if (l != null) {
      i1 = i2 + lxz.b(17, l);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     iwz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */