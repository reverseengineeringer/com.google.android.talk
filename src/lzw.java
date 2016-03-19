public final class lzw
  extends lyb<lzw>
{
  private static final lzw[] Y = new lzw[0];
  public static final lyc<lyt, lzw> a = lyc.a(lzw.class, 496814258L);
  public static final lyc<msu, lzw> b = lyc.a(lzw.class, 496814258L);
  public String A = null;
  public String B = null;
  public lyt[] C = lyt.d();
  public Boolean D = null;
  public String E = null;
  public String F = null;
  public String G = null;
  public String H = null;
  public lyt I = null;
  public lyt[] J = lyt.d();
  public Integer K = null;
  public lyt L = null;
  public String M = null;
  public String N = null;
  public lyt O = null;
  public String P = null;
  public String Q = null;
  public String R = null;
  public String S = null;
  public String T = null;
  public String U = null;
  public String V = null;
  public String W = null;
  public String X = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public lzf h = null;
  public String i = null;
  public lyt[] j = lyt.d();
  public lyt k = null;
  public String l = null;
  public lyt[] m = lyt.d();
  public String n = null;
  public String o = null;
  public String[] p = lyo.f;
  public String[] q = lyo.f;
  public String[] r = lyo.f;
  public String[] s = lyo.f;
  public lyt t = null;
  public String u = null;
  public String v = null;
  public Integer w = null;
  public Integer x = null;
  public String y = null;
  public String z = null;
  
  public lzw()
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
    Object localObject;
    if ((j != null) && (j.length > 0))
    {
      i1 = 0;
      while (i1 < j.length)
      {
        localObject = j[i1];
        if (localObject != null) {
          paramlxz.b(8, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (k != null) {
      paramlxz.b(9, k);
    }
    if (l != null) {
      paramlxz.a(10, l);
    }
    if ((m != null) && (m.length > 0))
    {
      i1 = 0;
      while (i1 < m.length)
      {
        localObject = m[i1];
        if (localObject != null) {
          paramlxz.b(11, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (n != null) {
      paramlxz.a(12, n);
    }
    if (o != null) {
      paramlxz.a(13, o);
    }
    if ((p != null) && (p.length > 0))
    {
      i1 = 0;
      while (i1 < p.length)
      {
        localObject = p[i1];
        if (localObject != null) {
          paramlxz.a(14, (String)localObject);
        }
        i1 += 1;
      }
    }
    if ((q != null) && (q.length > 0))
    {
      i1 = 0;
      while (i1 < q.length)
      {
        localObject = q[i1];
        if (localObject != null) {
          paramlxz.a(15, (String)localObject);
        }
        i1 += 1;
      }
    }
    if ((r != null) && (r.length > 0))
    {
      i1 = 0;
      while (i1 < r.length)
      {
        localObject = r[i1];
        if (localObject != null) {
          paramlxz.a(16, (String)localObject);
        }
        i1 += 1;
      }
    }
    if ((s != null) && (s.length > 0))
    {
      i1 = 0;
      while (i1 < s.length)
      {
        localObject = s[i1];
        if (localObject != null) {
          paramlxz.a(17, (String)localObject);
        }
        i1 += 1;
      }
    }
    if (t != null) {
      paramlxz.b(18, t);
    }
    if (u != null) {
      paramlxz.a(19, u);
    }
    if (v != null) {
      paramlxz.a(20, v);
    }
    if (w != null) {
      paramlxz.a(21, w.intValue());
    }
    if (x != null) {
      paramlxz.a(22, x.intValue());
    }
    if (y != null) {
      paramlxz.a(23, y);
    }
    if (z != null) {
      paramlxz.a(27, z);
    }
    if (A != null) {
      paramlxz.a(38, A);
    }
    if (B != null) {
      paramlxz.a(39, B);
    }
    if ((C != null) && (C.length > 0))
    {
      i1 = 0;
      while (i1 < C.length)
      {
        localObject = C[i1];
        if (localObject != null) {
          paramlxz.b(42, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (D != null) {
      paramlxz.a(65, D.booleanValue());
    }
    if (E != null) {
      paramlxz.a(66, E);
    }
    if (F != null) {
      paramlxz.a(67, F);
    }
    if (G != null) {
      paramlxz.a(68, G);
    }
    if (H != null) {
      paramlxz.a(75, H);
    }
    if (I != null) {
      paramlxz.b(82, I);
    }
    if ((J != null) && (J.length > 0))
    {
      i1 = i2;
      while (i1 < J.length)
      {
        localObject = J[i1];
        if (localObject != null) {
          paramlxz.b(83, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (K != null) {
      paramlxz.a(90, K.intValue());
    }
    if (L != null) {
      paramlxz.b(96, L);
    }
    if (M != null) {
      paramlxz.a(111, M);
    }
    if (N != null) {
      paramlxz.a(112, N);
    }
    if (O != null) {
      paramlxz.b(185, O);
    }
    if (P != null) {
      paramlxz.a(188, P);
    }
    if (Q != null) {
      paramlxz.a(189, Q);
    }
    if (R != null) {
      paramlxz.a(190, R);
    }
    if (S != null) {
      paramlxz.a(191, S);
    }
    if (T != null) {
      paramlxz.a(215, T);
    }
    if (U != null) {
      paramlxz.a(249, U);
    }
    if (V != null) {
      paramlxz.a(252, V);
    }
    if (W != null) {
      paramlxz.a(254, W);
    }
    if (X != null) {
      paramlxz.a(258, X);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i7 = 0;
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
    Object localObject;
    if (j != null)
    {
      i2 = i1;
      if (j.length > 0)
      {
        i2 = 0;
        while (i2 < j.length)
        {
          localObject = j[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(8, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    int i3 = i2;
    if (k != null) {
      i3 = i2 + lxz.d(9, k);
    }
    i1 = i3;
    if (l != null) {
      i1 = i3 + lxz.b(10, l);
    }
    i2 = i1;
    if (m != null)
    {
      i2 = i1;
      if (m.length > 0)
      {
        i2 = 0;
        while (i2 < m.length)
        {
          localObject = m[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(11, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i3 = i2;
    if (n != null) {
      i3 = i2 + lxz.b(12, n);
    }
    i1 = i3;
    if (o != null) {
      i1 = i3 + lxz.b(13, o);
    }
    i2 = i1;
    int i4;
    int i6;
    int i5;
    if (p != null)
    {
      i2 = i1;
      if (p.length > 0)
      {
        i2 = 0;
        i3 = 0;
        for (i4 = 0; i2 < p.length; i4 = i5)
        {
          localObject = p[i2];
          i6 = i3;
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
    if (q != null)
    {
      i1 = i2;
      if (q.length > 0)
      {
        i1 = 0;
        i3 = 0;
        for (i4 = 0; i1 < q.length; i4 = i5)
        {
          localObject = q[i1];
          i6 = i3;
          i5 = i4;
          if (localObject != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a((String)localObject);
          }
          i1 += 1;
          i3 = i6;
        }
        i1 = i2 + i3 + i4 * 1;
      }
    }
    i2 = i1;
    if (r != null)
    {
      i2 = i1;
      if (r.length > 0)
      {
        i2 = 0;
        i3 = 0;
        for (i4 = 0; i2 < r.length; i4 = i5)
        {
          localObject = r[i2];
          i6 = i3;
          i5 = i4;
          if (localObject != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a((String)localObject);
          }
          i2 += 1;
          i3 = i6;
        }
        i2 = i1 + i3 + i4 * 2;
      }
    }
    i1 = i2;
    if (s != null)
    {
      i1 = i2;
      if (s.length > 0)
      {
        i1 = 0;
        i3 = 0;
        for (i4 = 0; i1 < s.length; i4 = i5)
        {
          localObject = s[i1];
          i6 = i3;
          i5 = i4;
          if (localObject != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a((String)localObject);
          }
          i1 += 1;
          i3 = i6;
        }
        i1 = i2 + i3 + i4 * 2;
      }
    }
    i2 = i1;
    if (t != null) {
      i2 = i1 + lxz.d(18, t);
    }
    i1 = i2;
    if (u != null) {
      i1 = i2 + lxz.b(19, u);
    }
    i2 = i1;
    if (v != null) {
      i2 = i1 + lxz.b(20, v);
    }
    i1 = i2;
    if (w != null) {
      i1 = i2 + lxz.e(21, w.intValue());
    }
    i2 = i1;
    if (x != null) {
      i2 = i1 + lxz.e(22, x.intValue());
    }
    i1 = i2;
    if (y != null) {
      i1 = i2 + lxz.b(23, y);
    }
    i2 = i1;
    if (z != null) {
      i2 = i1 + lxz.b(27, z);
    }
    i3 = i2;
    if (A != null) {
      i3 = i2 + lxz.b(38, A);
    }
    i1 = i3;
    if (B != null) {
      i1 = i3 + lxz.b(39, B);
    }
    i2 = i1;
    if (C != null)
    {
      i2 = i1;
      if (C.length > 0)
      {
        i2 = 0;
        while (i2 < C.length)
        {
          localObject = C[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(42, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (D != null)
    {
      D.booleanValue();
      i1 = i2 + (lxz.f(65) + 1);
    }
    i2 = i1;
    if (E != null) {
      i2 = i1 + lxz.b(66, E);
    }
    i1 = i2;
    if (F != null) {
      i1 = i2 + lxz.b(67, F);
    }
    i2 = i1;
    if (G != null) {
      i2 = i1 + lxz.b(68, G);
    }
    i3 = i2;
    if (H != null) {
      i3 = i2 + lxz.b(75, H);
    }
    i1 = i3;
    if (I != null) {
      i1 = i3 + lxz.d(82, I);
    }
    i2 = i1;
    if (J != null)
    {
      i2 = i1;
      if (J.length > 0)
      {
        i3 = i7;
        for (;;)
        {
          i2 = i1;
          if (i3 >= J.length) {
            break;
          }
          localObject = J[i3];
          i2 = i1;
          if (localObject != null) {
            i2 = i1 + lxz.d(83, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (K != null) {
      i1 = i2 + lxz.e(90, K.intValue());
    }
    i2 = i1;
    if (L != null) {
      i2 = i1 + lxz.d(96, L);
    }
    i1 = i2;
    if (M != null) {
      i1 = i2 + lxz.b(111, M);
    }
    i2 = i1;
    if (N != null) {
      i2 = i1 + lxz.b(112, N);
    }
    i1 = i2;
    if (O != null) {
      i1 = i2 + lxz.d(185, O);
    }
    i2 = i1;
    if (P != null) {
      i2 = i1 + lxz.b(188, P);
    }
    i1 = i2;
    if (Q != null) {
      i1 = i2 + lxz.b(189, Q);
    }
    i2 = i1;
    if (R != null) {
      i2 = i1 + lxz.b(190, R);
    }
    i1 = i2;
    if (S != null) {
      i1 = i2 + lxz.b(191, S);
    }
    i2 = i1;
    if (T != null) {
      i2 = i1 + lxz.b(215, T);
    }
    i1 = i2;
    if (U != null) {
      i1 = i2 + lxz.b(249, U);
    }
    i2 = i1;
    if (V != null) {
      i2 = i1 + lxz.b(252, V);
    }
    i1 = i2;
    if (W != null) {
      i1 = i2 + lxz.b(254, W);
    }
    i2 = i1;
    if (X != null) {
      i2 = i1 + lxz.b(258, X);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     lzw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */