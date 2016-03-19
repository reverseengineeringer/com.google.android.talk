public final class jdu
  extends lyb<jdu>
{
  private static volatile jdu[] S;
  public Integer A = null;
  public Integer B = null;
  public Boolean C = null;
  public String D = null;
  public String E = null;
  public String[] F = lyo.f;
  public Integer G = null;
  public Integer H = null;
  public mae[] I = mae.b;
  public jfd[] J = jfd.d();
  public Long K = null;
  public Long L = null;
  public String[] M = lyo.f;
  public Boolean N = null;
  public jdv[] O = jdv.d();
  public jfa[] P = jfa.d();
  public Boolean Q = null;
  public Integer R = null;
  public Integer a = null;
  public jed b = null;
  public Boolean c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public Integer h = null;
  public String i = null;
  public Integer j = null;
  public String k = null;
  public String l = null;
  public String m = null;
  public joi n = null;
  public jkw[] o = jkw.c;
  public jed[] p = jed.d();
  public String[] q = lyo.f;
  public jek r = null;
  public Integer s = null;
  public Boolean t = null;
  public Integer u = null;
  public String v = null;
  public jkc[] w = jkc.d();
  public Integer x = null;
  public Integer y = null;
  public Boolean z = null;
  
  public jdu()
  {
    eD = null;
    eE = -1;
  }
  
  public static jdu[] d()
  {
    if (S == null) {}
    synchronized (lyf.a)
    {
      if (S == null) {
        S = new jdu[0];
      }
      return S;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    paramlxz.a(3, f);
    if (g != null) {
      paramlxz.a(4, g);
    }
    if (h != null) {
      paramlxz.a(5, h.intValue());
    }
    paramlxz.a(6, i);
    if (j != null) {
      paramlxz.a(7, j.intValue());
    }
    if (k != null) {
      paramlxz.a(8, k);
    }
    if (l != null) {
      paramlxz.a(9, l);
    }
    if (m != null) {
      paramlxz.a(10, m);
    }
    int i1;
    Object localObject;
    if ((p != null) && (p.length > 0))
    {
      i1 = 0;
      while (i1 < p.length)
      {
        localObject = p[i1];
        if (localObject != null) {
          paramlxz.b(11, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if ((o != null) && (o.length > 0))
    {
      i1 = 0;
      while (i1 < o.length)
      {
        localObject = o[i1];
        if (localObject != null) {
          paramlxz.b(12, (lyi)localObject);
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
          paramlxz.a(13, (String)localObject);
        }
        i1 += 1;
      }
    }
    if (r != null) {
      paramlxz.b(14, r);
    }
    if (s != null) {
      paramlxz.a(15, s.intValue());
    }
    if ((F != null) && (F.length > 0))
    {
      i1 = 0;
      while (i1 < F.length)
      {
        localObject = F[i1];
        if (localObject != null) {
          paramlxz.a(16, (String)localObject);
        }
        i1 += 1;
      }
    }
    if (u != null) {
      paramlxz.a(17, u.intValue());
    }
    if (v != null) {
      paramlxz.a(18, v);
    }
    if (t != null) {
      paramlxz.a(19, t.booleanValue());
    }
    if ((w != null) && (w.length > 0))
    {
      i1 = 0;
      while (i1 < w.length)
      {
        localObject = w[i1];
        if (localObject != null) {
          paramlxz.b(20, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (x != null) {
      paramlxz.a(21, x.intValue());
    }
    if (y != null) {
      paramlxz.a(22, y.intValue());
    }
    if (z != null) {
      paramlxz.a(23, z.booleanValue());
    }
    if (A != null) {
      paramlxz.a(24, A.intValue());
    }
    if (B != null) {
      paramlxz.a(25, B.intValue());
    }
    if (C != null) {
      paramlxz.a(26, C.booleanValue());
    }
    if (E != null) {
      paramlxz.a(27, E);
    }
    if (G != null) {
      paramlxz.a(28, G.intValue());
    }
    if (H != null) {
      paramlxz.a(29, H.intValue());
    }
    if ((I != null) && (I.length > 0))
    {
      i1 = 0;
      while (i1 < I.length)
      {
        localObject = I[i1];
        if (localObject != null) {
          paramlxz.b(30, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (D != null) {
      paramlxz.a(31, D);
    }
    if (K != null) {
      paramlxz.b(32, K.longValue());
    }
    if (c != null) {
      paramlxz.a(33, c.booleanValue());
    }
    if (L != null) {
      paramlxz.b(34, L.longValue());
    }
    if ((M != null) && (M.length > 0))
    {
      i1 = 0;
      while (i1 < M.length)
      {
        localObject = M[i1];
        if (localObject != null) {
          paramlxz.a(35, (String)localObject);
        }
        i1 += 1;
      }
    }
    if ((J != null) && (J.length > 0))
    {
      i1 = 0;
      while (i1 < J.length)
      {
        localObject = J[i1];
        if (localObject != null) {
          paramlxz.b(36, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (N != null) {
      paramlxz.a(37, N.booleanValue());
    }
    if ((O != null) && (O.length > 0))
    {
      i1 = 0;
      while (i1 < O.length)
      {
        localObject = O[i1];
        if (localObject != null) {
          paramlxz.b(38, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if ((P != null) && (P.length > 0))
    {
      i1 = i2;
      while (i1 < P.length)
      {
        localObject = P[i1];
        if (localObject != null) {
          paramlxz.b(39, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (d != null) {
      paramlxz.a(40, d);
    }
    if (Q != null) {
      paramlxz.a(41, Q.booleanValue());
    }
    if (R != null) {
      paramlxz.a(42, R.intValue());
    }
    if (n != null) {
      paramlxz.b(43, n);
    }
    if (e != null) {
      paramlxz.a(44, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i7 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.e(1, a.intValue());
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.d(2, b);
    }
    i2 += lxz.b(3, f);
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.b(4, g);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.e(5, h.intValue());
    }
    i2 += lxz.b(6, i);
    i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.e(7, j.intValue());
    }
    i2 = i1;
    if (k != null) {
      i2 = i1 + lxz.b(8, k);
    }
    int i3 = i2;
    if (l != null) {
      i3 = i2 + lxz.b(9, l);
    }
    i1 = i3;
    if (m != null) {
      i1 = i3 + lxz.b(10, m);
    }
    i2 = i1;
    Object localObject;
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
            i3 = i1 + lxz.d(11, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (o != null)
    {
      i1 = i2;
      if (o.length > 0)
      {
        i1 = i2;
        i2 = 0;
        while (i2 < o.length)
        {
          localObject = o[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(12, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
      }
    }
    i2 = i1;
    int i4;
    int i6;
    int i5;
    if (q != null)
    {
      i2 = i1;
      if (q.length > 0)
      {
        i2 = 0;
        i3 = 0;
        for (i4 = 0; i2 < q.length; i4 = i5)
        {
          localObject = q[i2];
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
    i3 = i2;
    if (r != null) {
      i3 = i2 + lxz.d(14, r);
    }
    i1 = i3;
    if (s != null) {
      i1 = i3 + lxz.e(15, s.intValue());
    }
    i2 = i1;
    if (F != null)
    {
      i2 = i1;
      if (F.length > 0)
      {
        i2 = 0;
        i3 = 0;
        for (i4 = 0; i2 < F.length; i4 = i5)
        {
          localObject = F[i2];
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
    if (u != null) {
      i1 = i2 + lxz.e(17, u.intValue());
    }
    i2 = i1;
    if (v != null) {
      i2 = i1 + lxz.b(18, v);
    }
    i1 = i2;
    if (t != null)
    {
      t.booleanValue();
      i1 = i2 + (lxz.f(19) + 1);
    }
    i2 = i1;
    if (w != null)
    {
      i2 = i1;
      if (w.length > 0)
      {
        i2 = 0;
        while (i2 < w.length)
        {
          localObject = w[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(20, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (x != null) {
      i1 = i2 + lxz.e(21, x.intValue());
    }
    i2 = i1;
    if (y != null) {
      i2 = i1 + lxz.e(22, y.intValue());
    }
    i1 = i2;
    if (z != null)
    {
      z.booleanValue();
      i1 = i2 + (lxz.f(23) + 1);
    }
    i2 = i1;
    if (A != null) {
      i2 = i1 + lxz.e(24, A.intValue());
    }
    i1 = i2;
    if (B != null) {
      i1 = i2 + lxz.e(25, B.intValue());
    }
    i2 = i1;
    if (C != null)
    {
      C.booleanValue();
      i2 = i1 + (lxz.f(26) + 1);
    }
    i1 = i2;
    if (E != null) {
      i1 = i2 + lxz.b(27, E);
    }
    i2 = i1;
    if (G != null) {
      i2 = i1 + lxz.e(28, G.intValue());
    }
    i1 = i2;
    if (H != null) {
      i1 = i2 + lxz.e(29, H.intValue());
    }
    i2 = i1;
    if (I != null)
    {
      i2 = i1;
      if (I.length > 0)
      {
        i2 = 0;
        while (i2 < I.length)
        {
          localObject = I[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(30, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (D != null) {
      i1 = i2 + lxz.b(31, D);
    }
    i2 = i1;
    if (K != null) {
      i2 = i1 + lxz.e(32, K.longValue());
    }
    i1 = i2;
    if (c != null)
    {
      c.booleanValue();
      i1 = i2 + (lxz.f(33) + 1);
    }
    i2 = i1;
    if (L != null) {
      i2 = i1 + lxz.e(34, L.longValue());
    }
    i1 = i2;
    if (M != null)
    {
      i1 = i2;
      if (M.length > 0)
      {
        i1 = 0;
        i3 = 0;
        for (i4 = 0; i1 < M.length; i4 = i5)
        {
          localObject = M[i1];
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
    i3 = i1;
    if (J != null)
    {
      i3 = i1;
      if (J.length > 0)
      {
        i2 = 0;
        while (i2 < J.length)
        {
          localObject = J[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(36, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i3 = i1;
      }
    }
    i2 = i3;
    if (N != null)
    {
      N.booleanValue();
      i2 = i3 + (lxz.f(37) + 1);
    }
    i1 = i2;
    if (O != null)
    {
      i1 = i2;
      if (O.length > 0)
      {
        i1 = i2;
        i2 = 0;
        while (i2 < O.length)
        {
          localObject = O[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(38, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
      }
    }
    i2 = i1;
    if (P != null)
    {
      i2 = i1;
      if (P.length > 0)
      {
        i3 = i7;
        for (;;)
        {
          i2 = i1;
          if (i3 >= P.length) {
            break;
          }
          localObject = P[i3];
          i2 = i1;
          if (localObject != null) {
            i2 = i1 + lxz.d(39, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.b(40, d);
    }
    i2 = i1;
    if (Q != null)
    {
      Q.booleanValue();
      i2 = i1 + (lxz.f(41) + 1);
    }
    i1 = i2;
    if (R != null) {
      i1 = i2 + lxz.e(42, R.intValue());
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.d(43, n);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(44, e);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     jdu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */