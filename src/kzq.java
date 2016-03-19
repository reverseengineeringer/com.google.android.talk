public final class kzq
  extends lyb<kzq>
{
  public Integer a = null;
  public Integer b = null;
  public int[] c = lyo.a;
  public Integer d = null;
  public kzs e = null;
  public kzs f = null;
  public kzs g = null;
  public String[] h = lyo.f;
  public Boolean i = null;
  public Long j = null;
  public Integer k = null;
  public Integer l = null;
  public Integer m = null;
  public long[] n = lyo.b;
  public String o = null;
  public kzt[] p = kzt.d();
  public Boolean q = null;
  public int[] r = lyo.a;
  public Integer s = null;
  public kzr t = null;
  public String u = null;
  public Integer v = null;
  public Integer w = null;
  public Integer x = null;
  public Integer y = null;
  public kzu[] z = kzu.d();
  
  public kzq()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (a != null) {
      paramlxz.b(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    int i1;
    if ((c != null) && (c.length > 0))
    {
      i1 = 0;
      while (i1 < c.length)
      {
        paramlxz.a(3, c[i1]);
        i1 += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    Object localObject;
    if ((h != null) && (h.length > 0))
    {
      i1 = 0;
      while (i1 < h.length)
      {
        localObject = h[i1];
        if (localObject != null) {
          paramlxz.a(8, (String)localObject);
        }
        i1 += 1;
      }
    }
    if (i != null) {
      paramlxz.a(9, i.booleanValue());
    }
    if (j != null) {
      paramlxz.b(10, j.longValue());
    }
    if (k != null) {
      paramlxz.a(11, k.intValue());
    }
    if (l != null) {
      paramlxz.a(12, l.intValue());
    }
    if (m != null) {
      paramlxz.a(13, m.intValue());
    }
    if ((n != null) && (n.length > 0))
    {
      i1 = 0;
      while (i1 < n.length)
      {
        paramlxz.b(14, n[i1]);
        i1 += 1;
      }
    }
    if (o != null) {
      paramlxz.a(15, o);
    }
    if ((p != null) && (p.length > 0))
    {
      i1 = 0;
      while (i1 < p.length)
      {
        localObject = p[i1];
        if (localObject != null) {
          paramlxz.b(16, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (q != null) {
      paramlxz.a(17, q.booleanValue());
    }
    if ((r != null) && (r.length > 0))
    {
      i1 = 0;
      while (i1 < r.length)
      {
        paramlxz.a(18, r[i1]);
        i1 += 1;
      }
    }
    if (s != null) {
      paramlxz.a(19, s.intValue());
    }
    if (t != null) {
      paramlxz.b(20, t);
    }
    if (u != null) {
      paramlxz.a(21, u);
    }
    if (v != null) {
      paramlxz.a(22, v.intValue());
    }
    if (w != null) {
      paramlxz.a(23, w.intValue());
    }
    if (x != null) {
      paramlxz.a(24, x.intValue());
    }
    if (y != null) {
      paramlxz.a(25, y.intValue());
    }
    if ((z != null) && (z.length > 0))
    {
      i1 = i2;
      while (i1 < z.length)
      {
        localObject = z[i1];
        if (localObject != null) {
          paramlxz.b(26, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i7 = 0;
    int i1 = super.b();
    int i2 = i1;
    if (a != null)
    {
      a.intValue();
      i2 = i1 + (lxz.f(1) + 4);
    }
    i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.e(2, b.intValue());
    }
    i2 = i1;
    if (c != null)
    {
      i2 = i1;
      if (c.length > 0)
      {
        i2 = 0;
        i3 = 0;
        while (i2 < c.length)
        {
          i3 += lxz.e(c[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + c.length * 1;
      }
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.e(4, d.intValue());
    }
    i2 = i1;
    if (e != null) {
      i2 = i1 + lxz.d(5, e);
    }
    int i3 = i2;
    if (f != null) {
      i3 = i2 + lxz.d(6, f);
    }
    i1 = i3;
    if (g != null) {
      i1 = i3 + lxz.d(7, g);
    }
    i2 = i1;
    Object localObject;
    if (h != null)
    {
      i2 = i1;
      if (h.length > 0)
      {
        i2 = 0;
        i3 = 0;
        int i5;
        for (int i4 = 0; i2 < h.length; i4 = i5)
        {
          localObject = h[i2];
          int i6 = i3;
          i5 = i4;
          if (localObject != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a((String)localObject);
          }
          i2 += 1;
          i3 = i6;
        }
        i2 = i1 + i3 + i4 * 1;
      }
    }
    i1 = i2;
    if (i != null)
    {
      i.booleanValue();
      i1 = i2 + (lxz.f(9) + 1);
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.e(10, j.longValue());
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.e(11, k.intValue());
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.e(12, l.intValue());
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.e(13, m.intValue());
    }
    i2 = i1;
    if (n != null)
    {
      i2 = i1;
      if (n.length > 0)
      {
        i2 = 0;
        i3 = 0;
        while (i2 < n.length)
        {
          i3 += lxz.b(n[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + n.length * 1;
      }
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.b(15, o);
    }
    i2 = i1;
    if (p != null)
    {
      i2 = i1;
      if (p.length > 0)
      {
        i2 = 0;
        while (i2 < p.length)
        {
          localObject = p[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(16, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (q != null)
    {
      q.booleanValue();
      i1 = i2 + (lxz.f(17) + 1);
    }
    i2 = i1;
    if (r != null)
    {
      i2 = i1;
      if (r.length > 0)
      {
        i2 = 0;
        i3 = 0;
        while (i2 < r.length)
        {
          i3 += lxz.e(r[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + r.length * 2;
      }
    }
    i1 = i2;
    if (s != null) {
      i1 = i2 + lxz.e(19, s.intValue());
    }
    i2 = i1;
    if (t != null) {
      i2 = i1 + lxz.d(20, t);
    }
    i1 = i2;
    if (u != null) {
      i1 = i2 + lxz.b(21, u);
    }
    i2 = i1;
    if (v != null) {
      i2 = i1 + lxz.e(22, v.intValue());
    }
    i1 = i2;
    if (w != null) {
      i1 = i2 + lxz.e(23, w.intValue());
    }
    i2 = i1;
    if (x != null) {
      i2 = i1 + lxz.e(24, x.intValue());
    }
    i1 = i2;
    if (y != null) {
      i1 = i2 + lxz.e(25, y.intValue());
    }
    i3 = i1;
    if (z != null)
    {
      i3 = i1;
      if (z.length > 0)
      {
        i2 = i7;
        for (;;)
        {
          i3 = i1;
          if (i2 >= z.length) {
            break;
          }
          localObject = z[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(26, (lyi)localObject);
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
 * Qualified Name:     kzq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */