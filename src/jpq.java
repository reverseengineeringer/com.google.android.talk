public final class jpq
  extends lyb<jpq>
{
  public jps A = null;
  public int[] B = lyo.a;
  public jpz C = null;
  public jpy[] D = jpy.d();
  public jqf[] E = jqf.d();
  public jpr[] F = jpr.d();
  public String[] G = lyo.f;
  public String H = null;
  public String I = null;
  public jqb[] J = jqb.d();
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public Double g = null;
  public String h = null;
  public String i = null;
  public Boolean j = null;
  public Boolean k = null;
  public Boolean l = null;
  public Boolean m = null;
  public String n = null;
  public Integer o = null;
  public Boolean p = null;
  public Boolean q = null;
  public Boolean r = null;
  public String s = null;
  public String t = null;
  public String u = null;
  public String v = null;
  public String w = null;
  public String x = null;
  public Integer y = null;
  public String[] z = lyo.f;
  
  public jpq()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (g != null) {
      paramlxz.a(4, g.doubleValue());
    }
    if (i != null) {
      paramlxz.a(5, i);
    }
    if (c != null) {
      paramlxz.a(6, c);
    }
    if (d != null) {
      paramlxz.a(7, d);
    }
    if (j != null) {
      paramlxz.a(8, j.booleanValue());
    }
    if (e != null) {
      paramlxz.a(9, e);
    }
    if (l != null) {
      paramlxz.a(11, l.booleanValue());
    }
    if (s != null) {
      paramlxz.a(12, s);
    }
    if (t != null) {
      paramlxz.a(13, t);
    }
    if (u != null) {
      paramlxz.a(14, u);
    }
    if (w != null) {
      paramlxz.a(15, w);
    }
    if (y != null) {
      paramlxz.a(16, y.intValue());
    }
    if (p != null) {
      paramlxz.a(17, p.booleanValue());
    }
    int i1;
    Object localObject;
    if ((z != null) && (z.length > 0))
    {
      i1 = 0;
      while (i1 < z.length)
      {
        localObject = z[i1];
        if (localObject != null) {
          paramlxz.a(18, (String)localObject);
        }
        i1 += 1;
      }
    }
    if (A != null) {
      paramlxz.b(19, A);
    }
    if (h != null) {
      paramlxz.a(20, h);
    }
    if (q != null) {
      paramlxz.a(21, q.booleanValue());
    }
    if (x != null) {
      paramlxz.a(22, x);
    }
    if ((B != null) && (B.length > 0))
    {
      i1 = 0;
      while (i1 < B.length)
      {
        paramlxz.a(23, B[i1]);
        i1 += 1;
      }
    }
    if (C != null) {
      paramlxz.b(24, C);
    }
    if (f != null) {
      paramlxz.a(25, f);
    }
    if ((D != null) && (D.length > 0))
    {
      i1 = 0;
      while (i1 < D.length)
      {
        localObject = D[i1];
        if (localObject != null) {
          paramlxz.b(26, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if ((E != null) && (E.length > 0))
    {
      i1 = 0;
      while (i1 < E.length)
      {
        localObject = E[i1];
        if (localObject != null) {
          paramlxz.b(27, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (r != null) {
      paramlxz.a(28, r.booleanValue());
    }
    if (o != null) {
      paramlxz.a(29, o.intValue());
    }
    if (m != null) {
      paramlxz.a(30, m.booleanValue());
    }
    if (b != null) {
      paramlxz.a(31, b);
    }
    if ((F != null) && (F.length > 0))
    {
      i1 = 0;
      while (i1 < F.length)
      {
        localObject = F[i1];
        if (localObject != null) {
          paramlxz.b(32, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if ((G != null) && (G.length > 0))
    {
      i1 = 0;
      while (i1 < G.length)
      {
        localObject = G[i1];
        if (localObject != null) {
          paramlxz.a(34, (String)localObject);
        }
        i1 += 1;
      }
    }
    if (H != null) {
      paramlxz.a(35, H);
    }
    if (k != null) {
      paramlxz.a(36, k.booleanValue());
    }
    if (v != null) {
      paramlxz.a(37, v);
    }
    if (I != null) {
      paramlxz.a(38, I);
    }
    if ((J != null) && (J.length > 0))
    {
      i1 = i2;
      while (i1 < J.length)
      {
        localObject = J[i1];
        if (localObject != null) {
          paramlxz.b(39, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (n != null) {
      paramlxz.a(40, n);
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
    if (g != null)
    {
      g.doubleValue();
      i2 = i1 + (lxz.f(4) + 8);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.b(5, i);
    }
    i2 = i1;
    if (c != null) {
      i2 = i1 + lxz.b(6, c);
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.b(7, d);
    }
    i2 = i1;
    if (j != null)
    {
      j.booleanValue();
      i2 = i1 + (lxz.f(8) + 1);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(9, e);
    }
    i2 = i1;
    if (l != null)
    {
      l.booleanValue();
      i2 = i1 + (lxz.f(11) + 1);
    }
    i1 = i2;
    if (s != null) {
      i1 = i2 + lxz.b(12, s);
    }
    i2 = i1;
    if (t != null) {
      i2 = i1 + lxz.b(13, t);
    }
    i1 = i2;
    if (u != null) {
      i1 = i2 + lxz.b(14, u);
    }
    i2 = i1;
    if (w != null) {
      i2 = i1 + lxz.b(15, w);
    }
    int i3 = i2;
    if (y != null) {
      i3 = i2 + lxz.e(16, y.intValue());
    }
    i1 = i3;
    if (p != null)
    {
      p.booleanValue();
      i1 = i3 + (lxz.f(17) + 1);
    }
    i2 = i1;
    int i4;
    Object localObject;
    int i6;
    int i5;
    if (z != null)
    {
      i2 = i1;
      if (z.length > 0)
      {
        i2 = 0;
        i3 = 0;
        for (i4 = 0; i2 < z.length; i4 = i5)
        {
          localObject = z[i2];
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
    if (A != null) {
      i1 = i2 + lxz.d(19, A);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.b(20, h);
    }
    i3 = i2;
    if (q != null)
    {
      q.booleanValue();
      i3 = i2 + (lxz.f(21) + 1);
    }
    i1 = i3;
    if (x != null) {
      i1 = i3 + lxz.b(22, x);
    }
    i2 = i1;
    if (B != null)
    {
      i2 = i1;
      if (B.length > 0)
      {
        i2 = 0;
        i3 = 0;
        while (i2 < B.length)
        {
          i3 += lxz.e(B[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + B.length * 2;
      }
    }
    i3 = i2;
    if (C != null) {
      i3 = i2 + lxz.d(24, C);
    }
    i1 = i3;
    if (f != null) {
      i1 = i3 + lxz.b(25, f);
    }
    i2 = i1;
    if (D != null)
    {
      i2 = i1;
      if (D.length > 0)
      {
        i2 = 0;
        while (i2 < D.length)
        {
          localObject = D[i2];
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
    if (E != null)
    {
      i1 = i2;
      if (E.length > 0)
      {
        i1 = i2;
        i2 = 0;
        while (i2 < E.length)
        {
          localObject = E[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(27, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
      }
    }
    i2 = i1;
    if (r != null)
    {
      r.booleanValue();
      i2 = i1 + (lxz.f(28) + 1);
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.e(29, o.intValue());
    }
    i2 = i1;
    if (m != null)
    {
      m.booleanValue();
      i2 = i1 + (lxz.f(30) + 1);
    }
    i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.b(31, b);
    }
    i2 = i1;
    if (F != null)
    {
      i2 = i1;
      if (F.length > 0)
      {
        i2 = 0;
        while (i2 < F.length)
        {
          localObject = F[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(32, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (G != null)
    {
      i1 = i2;
      if (G.length > 0)
      {
        i1 = 0;
        i3 = 0;
        for (i4 = 0; i1 < G.length; i4 = i5)
        {
          localObject = G[i1];
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
    if (H != null) {
      i2 = i1 + lxz.b(35, H);
    }
    i1 = i2;
    if (k != null)
    {
      k.booleanValue();
      i1 = i2 + (lxz.f(36) + 1);
    }
    i2 = i1;
    if (v != null) {
      i2 = i1 + lxz.b(37, v);
    }
    i1 = i2;
    if (I != null) {
      i1 = i2 + lxz.b(38, I);
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
            i2 = i1 + lxz.d(39, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.b(40, n);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     jpq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */