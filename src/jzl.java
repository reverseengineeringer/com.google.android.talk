public final class jzl
  extends lyb<jzl>
{
  private static volatile jzl[] z;
  public jxw a = null;
  public kcr b = null;
  public Long c = null;
  public String d = null;
  public jzm e = null;
  public Integer f = null;
  public jxh g = null;
  public kcc h = null;
  public jxz i = null;
  public kaw j = null;
  public kcq k = null;
  public kda l = null;
  public kco m = null;
  public kbq n = null;
  public Long o = null;
  public Boolean p = null;
  public Integer q = null;
  public Boolean r = null;
  public jyp s = null;
  public jzn t = null;
  public Integer u = null;
  public Long v = null;
  public jxc w = null;
  public Long x = null;
  public Integer y = null;
  
  public jzl()
  {
    eD = null;
    eE = -1;
  }
  
  public static jzl[] d()
  {
    if (z == null) {}
    synchronized (lyf.a)
    {
      if (z == null) {
        z = new jzl[0];
      }
      return z;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.longValue());
    }
    if (e != null) {
      paramlxz.b(4, e);
    }
    if (f != null) {
      paramlxz.a(6, f.intValue());
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.b(9, h);
    }
    if (i != null) {
      paramlxz.b(10, i);
    }
    if (j != null) {
      paramlxz.b(11, j);
    }
    if (d != null) {
      paramlxz.a(12, d);
    }
    if (o != null) {
      paramlxz.b(13, o.longValue());
    }
    if (k != null) {
      paramlxz.b(14, k);
    }
    if (p != null) {
      paramlxz.a(15, p.booleanValue());
    }
    if (q != null) {
      paramlxz.a(16, q.intValue());
    }
    if (r != null) {
      paramlxz.a(17, r.booleanValue());
    }
    if (s != null) {
      paramlxz.b(20, s);
    }
    if (t != null) {
      paramlxz.b(21, t);
    }
    if (l != null) {
      paramlxz.b(22, l);
    }
    if (u != null) {
      paramlxz.a(23, u.intValue());
    }
    if (v != null) {
      paramlxz.a(24, v.longValue());
    }
    if (w != null) {
      paramlxz.b(26, w);
    }
    if (x != null) {
      paramlxz.b(27, x.longValue());
    }
    if (y != null) {
      paramlxz.a(28, y.intValue());
    }
    if (m != null) {
      paramlxz.b(29, m);
    }
    if (n != null) {
      paramlxz.b(30, n);
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
      i2 = i1 + lxz.d(2, b);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.d(3, c.longValue());
    }
    i2 = i1;
    if (e != null) {
      i2 = i1 + lxz.d(4, e);
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.e(6, f.intValue());
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.d(7, g);
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.d(9, h);
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.d(10, i);
    }
    i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.d(11, j);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.b(12, d);
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.e(13, o.longValue());
    }
    i2 = i1;
    if (k != null) {
      i2 = i1 + lxz.d(14, k);
    }
    i1 = i2;
    if (p != null)
    {
      p.booleanValue();
      i1 = i2 + (lxz.f(15) + 1);
    }
    i2 = i1;
    if (q != null) {
      i2 = i1 + lxz.e(16, q.intValue());
    }
    i1 = i2;
    if (r != null)
    {
      r.booleanValue();
      i1 = i2 + (lxz.f(17) + 1);
    }
    i2 = i1;
    if (s != null) {
      i2 = i1 + lxz.d(20, s);
    }
    i1 = i2;
    if (t != null) {
      i1 = i2 + lxz.d(21, t);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.d(22, l);
    }
    i1 = i2;
    if (u != null) {
      i1 = i2 + lxz.e(23, u.intValue());
    }
    i2 = i1;
    if (v != null) {
      i2 = i1 + lxz.d(24, v.longValue());
    }
    i1 = i2;
    if (w != null) {
      i1 = i2 + lxz.d(26, w);
    }
    i2 = i1;
    if (x != null) {
      i2 = i1 + lxz.e(27, x.longValue());
    }
    i1 = i2;
    if (y != null) {
      i1 = i2 + lxz.e(28, y.intValue());
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.d(29, m);
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.d(30, n);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     jzl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */