public final class kmb
  extends lyb<kmb>
{
  public klz A = null;
  public Long B = null;
  public String C = null;
  public String D = null;
  public klx[] E = klx.d();
  public Integer a = null;
  public kmd b = null;
  public String c = null;
  public Integer d = null;
  public int[] e = lyo.a;
  public Integer f = null;
  public Integer g = null;
  public Integer h = null;
  public Integer i = null;
  public String j = null;
  public String k = null;
  public kme[] l = kme.d();
  public kme m = null;
  public Long n = null;
  public String o = null;
  public Long p = null;
  public Integer q = null;
  public Integer r = null;
  public Boolean s = null;
  public Long t = null;
  public Integer u = null;
  public klx v = null;
  public Integer w = null;
  public kmc x = null;
  public String y = null;
  public kma[] z = kma.d();
  
  public kmb()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    paramlxz.a(1, a.intValue());
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (d != null) {
      paramlxz.a(3, d.intValue());
    }
    if (f != null) {
      paramlxz.a(4, f.intValue());
    }
    if (g != null) {
      paramlxz.a(5, g.intValue());
    }
    if (h != null) {
      paramlxz.a(6, h.intValue());
    }
    if (i != null) {
      paramlxz.a(7, i.intValue());
    }
    if (j != null) {
      paramlxz.a(8, j);
    }
    if (k != null) {
      paramlxz.a(9, k);
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
          paramlxz.b(10, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (n != null) {
      paramlxz.a(11, n.longValue());
    }
    if ((e != null) && (e.length > 0))
    {
      i1 = 0;
      while (i1 < e.length)
      {
        paramlxz.a(12, e[i1]);
        i1 += 1;
      }
    }
    if (m != null) {
      paramlxz.b(13, m);
    }
    if (o != null) {
      paramlxz.a(14, o);
    }
    if (p != null) {
      paramlxz.a(15, p.longValue());
    }
    if (q != null) {
      paramlxz.c(16, q.intValue());
    }
    if (r != null) {
      paramlxz.a(17, r.intValue());
    }
    if (s != null) {
      paramlxz.a(18, s.booleanValue());
    }
    if (t != null) {
      paramlxz.a(19, t.longValue());
    }
    if (c != null) {
      paramlxz.a(20, c);
    }
    if (u != null) {
      paramlxz.a(21, u.intValue());
    }
    if (v != null) {
      paramlxz.b(22, v);
    }
    if (w != null) {
      paramlxz.a(23, w.intValue());
    }
    if (x != null) {
      paramlxz.b(24, x);
    }
    if (y != null) {
      paramlxz.a(25, y);
    }
    if ((z != null) && (z.length > 0))
    {
      i1 = 0;
      while (i1 < z.length)
      {
        localObject = z[i1];
        if (localObject != null) {
          paramlxz.b(26, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (A != null) {
      paramlxz.b(27, A);
    }
    if (B != null) {
      paramlxz.a(28, B.longValue());
    }
    if (C != null) {
      paramlxz.a(29, C);
    }
    if (D != null) {
      paramlxz.a(30, D);
    }
    if ((E != null) && (E.length > 0))
    {
      i1 = i2;
      while (i1 < E.length)
      {
        localObject = E[i1];
        if (localObject != null) {
          paramlxz.b(31, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i4 = 0;
    int i2 = super.b() + lxz.e(1, a.intValue());
    int i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.d(2, b);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.e(3, d.intValue());
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.e(4, f.intValue());
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.e(5, g.intValue());
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.e(6, h.intValue());
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.e(7, i.intValue());
    }
    int i3 = i2;
    if (j != null) {
      i3 = i2 + lxz.b(8, j);
    }
    i1 = i3;
    if (k != null) {
      i1 = i3 + lxz.b(9, k);
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
            i3 = i1 + lxz.d(10, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.d(11, n.longValue());
    }
    i2 = i1;
    if (e != null)
    {
      i2 = i1;
      if (e.length > 0)
      {
        i2 = 0;
        i3 = 0;
        while (i2 < e.length)
        {
          i3 += lxz.e(e[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + e.length * 1;
      }
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.d(13, m);
    }
    i2 = i1;
    if (o != null) {
      i2 = i1 + lxz.b(14, o);
    }
    i1 = i2;
    if (p != null) {
      i1 = i2 + lxz.d(15, p.longValue());
    }
    i2 = i1;
    if (q != null) {
      i2 = i1 + lxz.f(16, q.intValue());
    }
    i1 = i2;
    if (r != null) {
      i1 = i2 + lxz.e(17, r.intValue());
    }
    i2 = i1;
    if (s != null)
    {
      s.booleanValue();
      i2 = i1 + (lxz.f(18) + 1);
    }
    i1 = i2;
    if (t != null) {
      i1 = i2 + lxz.d(19, t.longValue());
    }
    i2 = i1;
    if (c != null) {
      i2 = i1 + lxz.b(20, c);
    }
    i1 = i2;
    if (u != null) {
      i1 = i2 + lxz.e(21, u.intValue());
    }
    i2 = i1;
    if (v != null) {
      i2 = i1 + lxz.d(22, v);
    }
    i1 = i2;
    if (w != null) {
      i1 = i2 + lxz.e(23, w.intValue());
    }
    i2 = i1;
    if (x != null) {
      i2 = i1 + lxz.d(24, x);
    }
    i1 = i2;
    if (y != null) {
      i1 = i2 + lxz.b(25, y);
    }
    i2 = i1;
    if (z != null)
    {
      i2 = i1;
      if (z.length > 0)
      {
        i2 = 0;
        while (i2 < z.length)
        {
          localObject = z[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(26, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (A != null) {
      i1 = i2 + lxz.d(27, A);
    }
    i2 = i1;
    if (B != null) {
      i2 = i1 + lxz.d(28, B.longValue());
    }
    i3 = i2;
    if (C != null) {
      i3 = i2 + lxz.b(29, C);
    }
    i1 = i3;
    if (D != null) {
      i1 = i3 + lxz.b(30, D);
    }
    i3 = i1;
    if (E != null)
    {
      i3 = i1;
      if (E.length > 0)
      {
        i2 = i4;
        for (;;)
        {
          i3 = i1;
          if (i2 >= E.length) {
            break;
          }
          localObject = E[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(31, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
      }
    }
    return i3;
  }
}

/* Location:
 * Qualified Name:     kmb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */