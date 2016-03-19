public final class kdf
  extends lyb<kdf>
{
  public Integer A = null;
  public Integer B = null;
  public String C = null;
  public String D = null;
  public Boolean E = null;
  public keu F = null;
  public Integer a = null;
  public Integer b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public byte[] f = null;
  public byte[] g = null;
  public String h = null;
  public String[] i = lyo.f;
  public String j = null;
  public Integer k = null;
  public String l = null;
  public String m = null;
  public String n = null;
  public String o = null;
  public String[] p = lyo.f;
  public Long q = null;
  public String r = null;
  public kdo requestHeader = null;
  public String[] s = lyo.f;
  public String t = null;
  public String u = null;
  public Integer v = null;
  public String[] w = lyo.f;
  public String x = null;
  public String y = null;
  public String[] z = lyo.f;
  
  public kdf()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (a != null) {
      paramlxz.a(2, a.intValue());
    }
    if (b != null) {
      paramlxz.a(3, b.intValue());
    }
    if (c != null) {
      paramlxz.a(4, c);
    }
    if (d != null) {
      paramlxz.a(5, d);
    }
    if (e != null) {
      paramlxz.a(7, e);
    }
    if (f != null) {
      paramlxz.a(8, f);
    }
    if (q != null) {
      paramlxz.b(9, q.longValue());
    }
    if (r != null) {
      paramlxz.a(10, r);
    }
    int i1;
    String str;
    if ((i != null) && (i.length > 0))
    {
      i1 = 0;
      while (i1 < i.length)
      {
        str = i[i1];
        if (str != null) {
          paramlxz.a(11, str);
        }
        i1 += 1;
      }
    }
    if ((s != null) && (s.length > 0))
    {
      i1 = 0;
      while (i1 < s.length)
      {
        str = s[i1];
        if (str != null) {
          paramlxz.a(12, str);
        }
        i1 += 1;
      }
    }
    if (y != null) {
      paramlxz.a(13, y);
    }
    if ((z != null) && (z.length > 0))
    {
      i1 = 0;
      while (i1 < z.length)
      {
        str = z[i1];
        if (str != null) {
          paramlxz.a(14, str);
        }
        i1 += 1;
      }
    }
    if (C != null) {
      paramlxz.a(15, C);
    }
    if (t != null) {
      paramlxz.a(16, t);
    }
    if (u != null) {
      paramlxz.a(17, u);
    }
    if (j != null) {
      paramlxz.a(18, j);
    }
    if ((w != null) && (w.length > 0))
    {
      i1 = 0;
      while (i1 < w.length)
      {
        str = w[i1];
        if (str != null) {
          paramlxz.a(19, str);
        }
        i1 += 1;
      }
    }
    if (x != null) {
      paramlxz.a(20, x);
    }
    if (D != null) {
      paramlxz.a(21, D);
    }
    if (k != null) {
      paramlxz.a(22, k.intValue());
    }
    if (v != null) {
      paramlxz.a(23, v.intValue());
    }
    if (l != null) {
      paramlxz.a(24, l);
    }
    if (m != null) {
      paramlxz.a(25, m);
    }
    if (n != null) {
      paramlxz.a(26, n);
    }
    if (A != null) {
      paramlxz.a(27, A.intValue());
    }
    if (B != null) {
      paramlxz.a(28, B.intValue());
    }
    if (o != null) {
      paramlxz.a(29, o);
    }
    if (E != null) {
      paramlxz.a(30, E.booleanValue());
    }
    if ((p != null) && (p.length > 0))
    {
      i1 = i2;
      while (i1 < p.length)
      {
        str = p[i1];
        if (str != null) {
          paramlxz.a(31, str);
        }
        i1 += 1;
      }
    }
    if (F != null) {
      paramlxz.b(32, F);
    }
    if (g != null) {
      paramlxz.a(33, g);
    }
    if (h != null) {
      paramlxz.a(34, h);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i7 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (requestHeader != null) {
      i1 = i2 + lxz.d(1, requestHeader);
    }
    i2 = i1;
    if (a != null) {
      i2 = i1 + lxz.e(2, a.intValue());
    }
    i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.e(3, b.intValue());
    }
    i2 = i1;
    if (c != null) {
      i2 = i1 + lxz.b(4, c);
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.b(5, d);
    }
    i2 = i1;
    if (e != null) {
      i2 = i1 + lxz.b(7, e);
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.b(8, f);
    }
    i2 = i1;
    if (q != null) {
      i2 = i1 + lxz.e(9, q.longValue());
    }
    i1 = i2;
    if (r != null) {
      i1 = i2 + lxz.b(10, r);
    }
    i2 = i1;
    int i4;
    String str;
    int i6;
    int i5;
    if (i != null)
    {
      i2 = i1;
      if (i.length > 0)
      {
        i2 = 0;
        i3 = 0;
        for (i4 = 0; i2 < i.length; i4 = i5)
        {
          str = i[i2];
          i6 = i3;
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
    int i3 = i2;
    if (s != null)
    {
      i3 = i2;
      if (s.length > 0)
      {
        i1 = 0;
        i3 = 0;
        for (i4 = 0; i1 < s.length; i4 = i5)
        {
          str = s[i1];
          i6 = i3;
          i5 = i4;
          if (str != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a(str);
          }
          i1 += 1;
          i3 = i6;
        }
        i3 = i2 + i3 + i4 * 1;
      }
    }
    i1 = i3;
    if (y != null) {
      i1 = i3 + lxz.b(13, y);
    }
    i2 = i1;
    if (z != null)
    {
      i2 = i1;
      if (z.length > 0)
      {
        i2 = 0;
        i3 = 0;
        for (i4 = 0; i2 < z.length; i4 = i5)
        {
          str = z[i2];
          i6 = i3;
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
    if (C != null) {
      i1 = i2 + lxz.b(15, C);
    }
    i2 = i1;
    if (t != null) {
      i2 = i1 + lxz.b(16, t);
    }
    i3 = i2;
    if (u != null) {
      i3 = i2 + lxz.b(17, u);
    }
    i1 = i3;
    if (j != null) {
      i1 = i3 + lxz.b(18, j);
    }
    i2 = i1;
    if (w != null)
    {
      i2 = i1;
      if (w.length > 0)
      {
        i2 = 0;
        i3 = 0;
        for (i4 = 0; i2 < w.length; i4 = i5)
        {
          str = w[i2];
          i6 = i3;
          i5 = i4;
          if (str != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a(str);
          }
          i2 += 1;
          i3 = i6;
        }
        i2 = i1 + i3 + i4 * 2;
      }
    }
    i1 = i2;
    if (x != null) {
      i1 = i2 + lxz.b(20, x);
    }
    i2 = i1;
    if (D != null) {
      i2 = i1 + lxz.b(21, D);
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.e(22, k.intValue());
    }
    i2 = i1;
    if (v != null) {
      i2 = i1 + lxz.e(23, v.intValue());
    }
    i1 = i2;
    if (l != null) {
      i1 = i2 + lxz.b(24, l);
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.b(25, m);
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.b(26, n);
    }
    i2 = i1;
    if (A != null) {
      i2 = i1 + lxz.e(27, A.intValue());
    }
    i1 = i2;
    if (B != null) {
      i1 = i2 + lxz.e(28, B.intValue());
    }
    i2 = i1;
    if (o != null) {
      i2 = i1 + lxz.b(29, o);
    }
    i1 = i2;
    if (E != null)
    {
      E.booleanValue();
      i1 = i2 + (lxz.f(30) + 1);
    }
    i2 = i1;
    if (p != null)
    {
      i2 = i1;
      if (p.length > 0)
      {
        i3 = 0;
        i4 = 0;
        i2 = i7;
        while (i2 < p.length)
        {
          str = p[i2];
          i6 = i3;
          i5 = i4;
          if (str != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a(str);
          }
          i2 += 1;
          i3 = i6;
          i4 = i5;
        }
        i2 = i1 + i3 + i4 * 2;
      }
    }
    i1 = i2;
    if (F != null) {
      i1 = i2 + lxz.d(32, F);
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.b(33, g);
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.b(34, h);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     kdf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */