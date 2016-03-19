public final class khf
  extends lyb<khf>
{
  private static volatile khf[] D;
  public String A = null;
  public String B = null;
  public String C = null;
  public String a = null;
  public Integer b = null;
  public khe c = null;
  public Boolean d = null;
  public Boolean e = null;
  public Integer f = null;
  public Long g = null;
  public Long h = null;
  public String i = null;
  public jxw j = null;
  public Boolean k = null;
  public Long l = null;
  public Long m = null;
  public String n = null;
  public Integer o = null;
  public String[] p = lyo.f;
  public Boolean q = null;
  public Integer r = null;
  public kid s = null;
  public Boolean t = null;
  public Integer u = null;
  public khd v = null;
  public Integer w = null;
  public Integer x = null;
  public Integer y = null;
  public int[] z = lyo.a;
  
  public khf()
  {
    eD = null;
    eE = -1;
  }
  
  public static khf[] d()
  {
    if (D == null) {}
    synchronized (lyf.a)
    {
      if (D == null) {
        D = new khf[0];
      }
      return D;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
    }
    if (g != null) {
      paramlxz.b(6, g.longValue());
    }
    if (h != null) {
      paramlxz.b(7, h.longValue());
    }
    if (i != null) {
      paramlxz.a(8, i);
    }
    if (j != null) {
      paramlxz.b(9, j);
    }
    if (k != null) {
      paramlxz.a(10, k.booleanValue());
    }
    if (l != null) {
      paramlxz.b(11, l.longValue());
    }
    if (m != null) {
      paramlxz.b(12, m.longValue());
    }
    if (n != null) {
      paramlxz.a(13, n);
    }
    if (o != null) {
      paramlxz.a(14, o.intValue());
    }
    int i1;
    if ((p != null) && (p.length > 0))
    {
      i1 = 0;
      while (i1 < p.length)
      {
        String str = p[i1];
        if (str != null) {
          paramlxz.a(15, str);
        }
        i1 += 1;
      }
    }
    if (q != null) {
      paramlxz.a(16, q.booleanValue());
    }
    if (s != null) {
      paramlxz.b(17, s);
    }
    if (t != null) {
      paramlxz.a(18, t.booleanValue());
    }
    if (v != null) {
      paramlxz.b(19, v);
    }
    if (f != null) {
      paramlxz.a(20, f.intValue());
    }
    if (w != null) {
      paramlxz.a(21, w.intValue());
    }
    if (x != null) {
      paramlxz.a(22, x.intValue());
    }
    if (y != null) {
      paramlxz.a(23, y.intValue());
    }
    if (r != null) {
      paramlxz.a(24, r.intValue());
    }
    if (u != null) {
      paramlxz.a(25, u.intValue());
    }
    if ((z != null) && (z.length > 0))
    {
      i1 = i2;
      while (i1 < z.length)
      {
        paramlxz.a(26, z[i1]);
        i1 += 1;
      }
    }
    if (A != null) {
      paramlxz.a(27, A);
    }
    if (B != null) {
      paramlxz.a(28, B);
    }
    if (C != null) {
      paramlxz.a(29, C);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i7 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.b(1, a);
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.e(2, b.intValue());
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.d(3, c);
    }
    i2 = i1;
    if (d != null)
    {
      d.booleanValue();
      i2 = i1 + (lxz.f(4) + 1);
    }
    i1 = i2;
    if (e != null)
    {
      e.booleanValue();
      i1 = i2 + (lxz.f(5) + 1);
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.e(6, g.longValue());
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.e(7, h.longValue());
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.b(8, i);
    }
    i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.d(9, j);
    }
    i2 = i1;
    if (k != null)
    {
      k.booleanValue();
      i2 = i1 + (lxz.f(10) + 1);
    }
    i1 = i2;
    if (l != null) {
      i1 = i2 + lxz.e(11, l.longValue());
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.e(12, m.longValue());
    }
    int i3 = i2;
    if (n != null) {
      i3 = i2 + lxz.b(13, n);
    }
    i1 = i3;
    if (o != null) {
      i1 = i3 + lxz.e(14, o.intValue());
    }
    i2 = i1;
    if (p != null)
    {
      i2 = i1;
      if (p.length > 0)
      {
        i2 = 0;
        i3 = 0;
        int i5;
        for (int i4 = 0; i2 < p.length; i4 = i5)
        {
          String str = p[i2];
          int i6 = i3;
          i5 = i4;
          if (str != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a(str);
          }
          i2 += 1;
          i3 = i6;
        }
        i2 = i1 + i3 + i4 * 1;
      }
    }
    i1 = i2;
    if (q != null)
    {
      q.booleanValue();
      i1 = i2 + (lxz.f(16) + 1);
    }
    i2 = i1;
    if (s != null) {
      i2 = i1 + lxz.d(17, s);
    }
    i1 = i2;
    if (t != null)
    {
      t.booleanValue();
      i1 = i2 + (lxz.f(18) + 1);
    }
    i2 = i1;
    if (v != null) {
      i2 = i1 + lxz.d(19, v);
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.e(20, f.intValue());
    }
    i2 = i1;
    if (w != null) {
      i2 = i1 + lxz.e(21, w.intValue());
    }
    i1 = i2;
    if (x != null) {
      i1 = i2 + lxz.e(22, x.intValue());
    }
    i2 = i1;
    if (y != null) {
      i2 = i1 + lxz.e(23, y.intValue());
    }
    i3 = i2;
    if (r != null) {
      i3 = i2 + lxz.e(24, r.intValue());
    }
    i1 = i3;
    if (u != null) {
      i1 = i3 + lxz.e(25, u.intValue());
    }
    i2 = i1;
    if (z != null)
    {
      i2 = i1;
      if (z.length > 0)
      {
        i3 = 0;
        i2 = i7;
        while (i2 < z.length)
        {
          i3 += lxz.e(z[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + z.length * 2;
      }
    }
    i1 = i2;
    if (A != null) {
      i1 = i2 + lxz.b(27, A);
    }
    i2 = i1;
    if (B != null) {
      i2 = i1 + lxz.b(28, B);
    }
    i1 = i2;
    if (C != null) {
      i1 = i2 + lxz.b(29, C);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     khf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */