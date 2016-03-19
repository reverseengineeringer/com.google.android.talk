public final class lzv
  extends lyb<lzv>
{
  private static final lzv[] C = new lzv[0];
  public static final lyc<lyt, lzv> a = lyc.a(lzv.class, 286605122L);
  public static final lyc<msu, lzv> b = lyc.a(lzv.class, 286605122L);
  public Boolean A = null;
  public String B = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public lzf h = null;
  public String i = null;
  public lyt[] j = lyt.d();
  public lyt k = null;
  public lyt[] l = lyt.d();
  public String m = null;
  public lyt n = null;
  public lyt o = null;
  public String p = null;
  public String q = null;
  public String r = null;
  public String s = null;
  public String t = null;
  public lyt u = null;
  public String v = null;
  public lyt w = null;
  public String x = null;
  public String y = null;
  public String z = null;
  
  public lzv()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (c != null) {
      paramlxz.a(1, c);
    }
    if (d != null) {
      paramlxz.a(2, d);
    }
    if (e != null) {
      paramlxz.a(3, e);
    }
    if (f != null) {
      paramlxz.a(4, f);
    }
    if (g != null) {
      paramlxz.a(5, g);
    }
    if (h != null) {
      paramlxz.b(6, h);
    }
    if (i != null) {
      paramlxz.a(7, i);
    }
    int i1;
    lyt locallyt;
    if ((j != null) && (j.length > 0))
    {
      i1 = 0;
      while (i1 < j.length)
      {
        locallyt = j[i1];
        if (locallyt != null) {
          paramlxz.b(8, locallyt);
        }
        i1 += 1;
      }
    }
    if (k != null) {
      paramlxz.b(9, k);
    }
    if ((l != null) && (l.length > 0))
    {
      i1 = i2;
      while (i1 < l.length)
      {
        locallyt = l[i1];
        if (locallyt != null) {
          paramlxz.b(11, locallyt);
        }
        i1 += 1;
      }
    }
    if (m != null) {
      paramlxz.a(12, m);
    }
    if (n != null) {
      paramlxz.b(24, n);
    }
    if (o != null) {
      paramlxz.b(25, o);
    }
    if (p != null) {
      paramlxz.a(26, p);
    }
    if (q != null) {
      paramlxz.a(27, q);
    }
    if (r != null) {
      paramlxz.a(28, r);
    }
    if (s != null) {
      paramlxz.a(29, s);
    }
    if (t != null) {
      paramlxz.a(75, t);
    }
    if (u != null) {
      paramlxz.b(82, u);
    }
    if (v != null) {
      paramlxz.a(106, v);
    }
    if (w != null) {
      paramlxz.b(185, w);
    }
    if (x != null) {
      paramlxz.a(227, x);
    }
    if (y != null) {
      paramlxz.a(228, y);
    }
    if (z != null) {
      paramlxz.a(254, z);
    }
    if (A != null) {
      paramlxz.a(267, A.booleanValue());
    }
    if (B != null) {
      paramlxz.a(280, B);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i4 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.b(1, c);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.b(2, d);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(3, e);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.b(4, f);
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.b(5, g);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.d(6, h);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.b(7, i);
    }
    i2 = i1;
    lyt locallyt;
    int i3;
    if (j != null)
    {
      i2 = i1;
      if (j.length > 0)
      {
        i2 = 0;
        while (i2 < j.length)
        {
          locallyt = j[i2];
          i3 = i1;
          if (locallyt != null) {
            i3 = i1 + lxz.d(8, locallyt);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.d(9, k);
    }
    i2 = i1;
    if (l != null)
    {
      i2 = i1;
      if (l.length > 0)
      {
        i3 = i4;
        for (;;)
        {
          i2 = i1;
          if (i3 >= l.length) {
            break;
          }
          locallyt = l[i3];
          i2 = i1;
          if (locallyt != null) {
            i2 = i1 + lxz.d(11, locallyt);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.b(12, m);
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.d(24, n);
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.d(25, o);
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.b(26, p);
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + lxz.b(27, q);
    }
    i2 = i1;
    if (r != null) {
      i2 = i1 + lxz.b(28, r);
    }
    i1 = i2;
    if (s != null) {
      i1 = i2 + lxz.b(29, s);
    }
    i2 = i1;
    if (t != null) {
      i2 = i1 + lxz.b(75, t);
    }
    i1 = i2;
    if (u != null) {
      i1 = i2 + lxz.d(82, u);
    }
    i2 = i1;
    if (v != null) {
      i2 = i1 + lxz.b(106, v);
    }
    i1 = i2;
    if (w != null) {
      i1 = i2 + lxz.d(185, w);
    }
    i2 = i1;
    if (x != null) {
      i2 = i1 + lxz.b(227, x);
    }
    i1 = i2;
    if (y != null) {
      i1 = i2 + lxz.b(228, y);
    }
    i2 = i1;
    if (z != null) {
      i2 = i1 + lxz.b(254, z);
    }
    i1 = i2;
    if (A != null)
    {
      A.booleanValue();
      i1 = i2 + (lxz.f(267) + 1);
    }
    i2 = i1;
    if (B != null) {
      i2 = i1 + lxz.b(280, B);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     lzv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */