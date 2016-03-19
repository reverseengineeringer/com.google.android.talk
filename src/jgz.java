public final class jgz
  extends lyb<jgz>
{
  private static volatile jgz[] B;
  public jhv A = null;
  public String a = null;
  public String b = null;
  public jlb c = null;
  public String d = null;
  public jjf e = null;
  public Long f = null;
  public String g = null;
  public String h = null;
  public jhf i = null;
  public String j = null;
  public String k = null;
  public Boolean l = null;
  public Boolean m = null;
  public String n = null;
  public Boolean o = null;
  public Boolean p = null;
  public Long q = null;
  public jgw r = null;
  public String s = null;
  public Boolean t = null;
  public String u = null;
  public jic v = null;
  public int w = Integer.MIN_VALUE;
  public Boolean x = null;
  public jhx y = null;
  public meo z = null;
  
  public jgz()
  {
    eD = null;
    eE = -1;
  }
  
  public static jgz[] d()
  {
    if (B == null) {}
    synchronized (lyf.a)
    {
      if (B == null) {
        B = new jgz[0];
      }
      return B;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(2, a);
    paramlxz.a(3, b);
    paramlxz.b(4, f.longValue());
    paramlxz.a(5, g);
    if (h != null) {
      paramlxz.a(6, h);
    }
    paramlxz.a(7, j);
    paramlxz.a(8, k);
    paramlxz.a(9, l.booleanValue());
    paramlxz.a(10, m.booleanValue());
    if (n != null) {
      paramlxz.a(11, n);
    }
    paramlxz.a(12, o.booleanValue());
    if (p != null) {
      paramlxz.a(13, p.booleanValue());
    }
    if (q != null) {
      paramlxz.b(15, q.longValue());
    }
    if (r != null) {
      paramlxz.b(16, r);
    }
    if (s != null) {
      paramlxz.a(17, s);
    }
    if (t != null) {
      paramlxz.a(18, t.booleanValue());
    }
    if (c != null) {
      paramlxz.b(19, c);
    }
    if (i != null) {
      paramlxz.b(20, i);
    }
    if (u != null) {
      paramlxz.a(21, u);
    }
    if (v != null) {
      paramlxz.b(22, v);
    }
    if (w != Integer.MIN_VALUE) {
      paramlxz.a(23, w);
    }
    if (x != null) {
      paramlxz.a(24, x.booleanValue());
    }
    if (d != null) {
      paramlxz.a(25, d);
    }
    if (y != null) {
      paramlxz.b(26, y);
    }
    if (e != null) {
      paramlxz.b(27, e);
    }
    if (z != null) {
      paramlxz.b(28, z);
    }
    if (A != null) {
      paramlxz.b(29, A);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b() + lxz.b(2, a) + lxz.b(3, b) + lxz.e(4, f.longValue()) + lxz.b(5, g);
    int i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.b(6, h);
    }
    i2 = lxz.b(7, j);
    int i3 = lxz.b(8, k);
    l.booleanValue();
    int i4 = lxz.f(9);
    m.booleanValue();
    i2 = i1 + i2 + i3 + (i4 + 1) + (lxz.f(10) + 1);
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.b(11, n);
    }
    o.booleanValue();
    i2 = i1 + (lxz.f(12) + 1);
    i1 = i2;
    if (p != null)
    {
      p.booleanValue();
      i1 = i2 + (lxz.f(13) + 1);
    }
    i2 = i1;
    if (q != null) {
      i2 = i1 + lxz.e(15, q.longValue());
    }
    i1 = i2;
    if (r != null) {
      i1 = i2 + lxz.d(16, r);
    }
    i2 = i1;
    if (s != null) {
      i2 = i1 + lxz.b(17, s);
    }
    i1 = i2;
    if (t != null)
    {
      t.booleanValue();
      i1 = i2 + (lxz.f(18) + 1);
    }
    i2 = i1;
    if (c != null) {
      i2 = i1 + lxz.d(19, c);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.d(20, i);
    }
    i2 = i1;
    if (u != null) {
      i2 = i1 + lxz.b(21, u);
    }
    i1 = i2;
    if (v != null) {
      i1 = i2 + lxz.d(22, v);
    }
    i2 = i1;
    if (w != Integer.MIN_VALUE) {
      i2 = i1 + lxz.e(23, w);
    }
    i1 = i2;
    if (x != null)
    {
      x.booleanValue();
      i1 = i2 + (lxz.f(24) + 1);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.b(25, d);
    }
    i1 = i2;
    if (y != null) {
      i1 = i2 + lxz.d(26, y);
    }
    i2 = i1;
    if (e != null) {
      i2 = i1 + lxz.d(27, e);
    }
    i1 = i2;
    if (z != null) {
      i1 = i2 + lxz.d(28, z);
    }
    i2 = i1;
    if (A != null) {
      i2 = i1 + lxz.d(29, A);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     jgz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */