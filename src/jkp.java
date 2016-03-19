public final class jkp
  extends lyb<jkp>
{
  public Integer A = null;
  public jjr B = null;
  public Integer C = null;
  public jkx D = null;
  public jko E = null;
  public jky F = null;
  public Boolean G = null;
  public jks H = null;
  public jkr I = null;
  public Boolean J = null;
  public Boolean K = null;
  public Integer L = null;
  public Integer a = null;
  public Integer b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public Integer h = null;
  public Integer i = null;
  public String j = null;
  public String k = null;
  public jjt[] l = jjt.d();
  public Integer m = null;
  public jju n = null;
  public jih o = null;
  public jkf p = null;
  public Boolean q = null;
  public Integer r = null;
  public jkq[] s = jkq.d();
  public Long t = null;
  public Boolean u = null;
  public Integer v = null;
  public Integer w = null;
  public Integer x = null;
  public Boolean y = null;
  public Integer z = null;
  
  public jkp()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    paramlxz.a(1, a.intValue());
    paramlxz.a(2, b.intValue());
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (h != null) {
      paramlxz.a(6, h.intValue());
    }
    if (j != null) {
      paramlxz.a(7, j);
    }
    if (k != null) {
      paramlxz.a(8, k);
    }
    int i1;
    Object localObject;
    if ((l != null) && (l.length > 0))
    {
      i1 = 0;
      while (i1 < l.length)
      {
        localObject = l[i1];
        if (localObject != null) {
          paramlxz.b(9, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (m != null) {
      paramlxz.a(10, m.intValue());
    }
    if (n != null) {
      paramlxz.b(11, n);
    }
    if (o != null) {
      paramlxz.b(12, o);
    }
    if (p != null) {
      paramlxz.b(13, p);
    }
    if (q != null) {
      paramlxz.a(14, q.booleanValue());
    }
    if (r != null) {
      paramlxz.a(15, r.intValue());
    }
    if ((s != null) && (s.length > 0))
    {
      i1 = i2;
      while (i1 < s.length)
      {
        localObject = s[i1];
        if (localObject != null) {
          paramlxz.b(16, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (t != null) {
      paramlxz.b(17, t.longValue());
    }
    if (u != null) {
      paramlxz.a(18, u.booleanValue());
    }
    if (v != null) {
      paramlxz.a(19, v.intValue());
    }
    if (w != null) {
      paramlxz.a(20, w.intValue());
    }
    if (z != null) {
      paramlxz.a(21, z.intValue());
    }
    if (A != null) {
      paramlxz.a(22, A.intValue());
    }
    if (B != null) {
      paramlxz.b(23, B);
    }
    if (C != null) {
      paramlxz.a(24, C.intValue());
    }
    if (D != null) {
      paramlxz.b(25, D);
    }
    if (E != null) {
      paramlxz.b(26, E);
    }
    if (F != null) {
      paramlxz.b(27, F);
    }
    if (f != null) {
      paramlxz.a(28, f);
    }
    if (y != null) {
      paramlxz.a(29, y.booleanValue());
    }
    if (i != null) {
      paramlxz.a(30, i.intValue());
    }
    if (x != null) {
      paramlxz.a(31, x.intValue());
    }
    if (G != null) {
      paramlxz.a(32, G.booleanValue());
    }
    if (H != null) {
      paramlxz.b(33, H);
    }
    if (g != null) {
      paramlxz.a(34, g);
    }
    if (I != null) {
      paramlxz.b(35, I);
    }
    if (J != null) {
      paramlxz.a(36, J.booleanValue());
    }
    if (K != null) {
      paramlxz.a(37, K.booleanValue());
    }
    if (L != null) {
      paramlxz.a(38, L.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i4 = 0;
    int i2 = super.b() + lxz.e(1, a.intValue()) + lxz.e(2, b.intValue());
    int i1 = i2;
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
    if (h != null) {
      i2 = i1 + lxz.e(6, h.intValue());
    }
    int i3 = i2;
    if (j != null) {
      i3 = i2 + lxz.b(7, j);
    }
    i1 = i3;
    if (k != null) {
      i1 = i3 + lxz.b(8, k);
    }
    i2 = i1;
    Object localObject;
    if (l != null)
    {
      i2 = i1;
      if (l.length > 0)
      {
        i2 = 0;
        while (i2 < l.length)
        {
          localObject = l[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(9, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.e(10, m.intValue());
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.d(11, n);
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.d(12, o);
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.d(13, p);
    }
    i3 = i2;
    if (q != null)
    {
      q.booleanValue();
      i3 = i2 + (lxz.f(14) + 1);
    }
    i1 = i3;
    if (r != null) {
      i1 = i3 + lxz.e(15, r.intValue());
    }
    i2 = i1;
    if (s != null)
    {
      i2 = i1;
      if (s.length > 0)
      {
        i3 = i4;
        for (;;)
        {
          i2 = i1;
          if (i3 >= s.length) {
            break;
          }
          localObject = s[i3];
          i2 = i1;
          if (localObject != null) {
            i2 = i1 + lxz.d(16, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (t != null) {
      i1 = i2 + lxz.e(17, t.longValue());
    }
    i2 = i1;
    if (u != null)
    {
      u.booleanValue();
      i2 = i1 + (lxz.f(18) + 1);
    }
    i1 = i2;
    if (v != null) {
      i1 = i2 + lxz.e(19, v.intValue());
    }
    i2 = i1;
    if (w != null) {
      i2 = i1 + lxz.e(20, w.intValue());
    }
    i1 = i2;
    if (z != null) {
      i1 = i2 + lxz.e(21, z.intValue());
    }
    i2 = i1;
    if (A != null) {
      i2 = i1 + lxz.e(22, A.intValue());
    }
    i1 = i2;
    if (B != null) {
      i1 = i2 + lxz.d(23, B);
    }
    i2 = i1;
    if (C != null) {
      i2 = i1 + lxz.e(24, C.intValue());
    }
    i1 = i2;
    if (D != null) {
      i1 = i2 + lxz.d(25, D);
    }
    i2 = i1;
    if (E != null) {
      i2 = i1 + lxz.d(26, E);
    }
    i1 = i2;
    if (F != null) {
      i1 = i2 + lxz.d(27, F);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.b(28, f);
    }
    i1 = i2;
    if (y != null)
    {
      y.booleanValue();
      i1 = i2 + (lxz.f(29) + 1);
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.e(30, i.intValue());
    }
    i1 = i2;
    if (x != null) {
      i1 = i2 + lxz.e(31, x.intValue());
    }
    i2 = i1;
    if (G != null)
    {
      G.booleanValue();
      i2 = i1 + (lxz.f(32) + 1);
    }
    i1 = i2;
    if (H != null) {
      i1 = i2 + lxz.d(33, H);
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.b(34, g);
    }
    i1 = i2;
    if (I != null) {
      i1 = i2 + lxz.d(35, I);
    }
    i2 = i1;
    if (J != null)
    {
      J.booleanValue();
      i2 = i1 + (lxz.f(36) + 1);
    }
    i1 = i2;
    if (K != null)
    {
      K.booleanValue();
      i1 = i2 + (lxz.f(37) + 1);
    }
    i2 = i1;
    if (L != null) {
      i2 = i1 + lxz.e(38, L.intValue());
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     jkp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */