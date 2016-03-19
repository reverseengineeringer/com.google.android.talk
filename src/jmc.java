public final class jmc
  extends lyb<jmc>
{
  public lyu[] A = lyu.d();
  public String[] B = lyo.f;
  public int[] C = lyo.a;
  public String a = null;
  public String b = null;
  public String c = null;
  public jme[] d = jme.d();
  public jme[] e = jme.d();
  public String[] f = lyo.f;
  public int g = Integer.MIN_VALUE;
  public String h = null;
  public Boolean i = null;
  public String j = null;
  public String k = null;
  public String l = null;
  public Boolean m = null;
  public jmd n = null;
  public Boolean o = null;
  public String p = null;
  public String q = null;
  public int r = Integer.MIN_VALUE;
  public Boolean s = null;
  public Boolean t = null;
  public String u = null;
  public String v = null;
  public Boolean w = null;
  public lzk[] x = lzk.d();
  public String y = null;
  public Integer z = null;
  
  public jmc()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    paramlxz.a(1, a);
    paramlxz.a(2, b);
    if (c != null) {
      paramlxz.a(3, c);
    }
    int i1;
    Object localObject;
    if ((d != null) && (d.length > 0))
    {
      i1 = 0;
      while (i1 < d.length)
      {
        localObject = d[i1];
        if (localObject != null) {
          paramlxz.b(4, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if ((e != null) && (e.length > 0))
    {
      i1 = 0;
      while (i1 < e.length)
      {
        localObject = e[i1];
        if (localObject != null) {
          paramlxz.b(5, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if ((f != null) && (f.length > 0))
    {
      i1 = 0;
      while (i1 < f.length)
      {
        localObject = f[i1];
        if (localObject != null) {
          paramlxz.a(6, (String)localObject);
        }
        i1 += 1;
      }
    }
    if (g != Integer.MIN_VALUE) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h);
    }
    if (i != null) {
      paramlxz.a(9, i.booleanValue());
    }
    if (j != null) {
      paramlxz.a(10, j);
    }
    if (k != null) {
      paramlxz.a(11, k);
    }
    if (l != null) {
      paramlxz.a(12, l);
    }
    if (m != null) {
      paramlxz.a(13, m.booleanValue());
    }
    if (n != null) {
      paramlxz.b(14, n);
    }
    if (o != null) {
      paramlxz.a(15, o.booleanValue());
    }
    if (p != null) {
      paramlxz.a(16, p);
    }
    if (q != null) {
      paramlxz.a(17, q);
    }
    if (r != Integer.MIN_VALUE) {
      paramlxz.a(18, r);
    }
    if (s != null) {
      paramlxz.a(19, s.booleanValue());
    }
    if (t != null) {
      paramlxz.a(20, t.booleanValue());
    }
    if (u != null) {
      paramlxz.a(21, u);
    }
    if (v != null) {
      paramlxz.a(22, v);
    }
    if (w != null) {
      paramlxz.a(23, w.booleanValue());
    }
    if ((x != null) && (x.length > 0))
    {
      i1 = 0;
      while (i1 < x.length)
      {
        localObject = x[i1];
        if (localObject != null) {
          paramlxz.b(24, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (y != null) {
      paramlxz.a(25, y);
    }
    if (z != null) {
      paramlxz.a(26, z.intValue());
    }
    if ((A != null) && (A.length > 0))
    {
      i1 = 0;
      while (i1 < A.length)
      {
        localObject = A[i1];
        if (localObject != null) {
          paramlxz.b(27, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if ((B != null) && (B.length > 0))
    {
      i1 = 0;
      while (i1 < B.length)
      {
        localObject = B[i1];
        if (localObject != null) {
          paramlxz.a(28, (String)localObject);
        }
        i1 += 1;
      }
    }
    if ((C != null) && (C.length > 0))
    {
      i1 = i2;
      while (i1 < C.length)
      {
        paramlxz.a(29, C[i1]);
        i1 += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i7 = 0;
    int i2 = super.b() + lxz.b(1, a) + lxz.b(2, b);
    int i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.b(3, c);
    }
    i2 = i1;
    Object localObject;
    if (d != null)
    {
      i2 = i1;
      if (d.length > 0)
      {
        i2 = 0;
        while (i2 < d.length)
        {
          localObject = d[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(4, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (e != null)
    {
      i1 = i2;
      if (e.length > 0)
      {
        i1 = i2;
        i2 = 0;
        while (i2 < e.length)
        {
          localObject = e[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(5, (lyi)localObject);
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
    if (f != null)
    {
      i2 = i1;
      if (f.length > 0)
      {
        i2 = 0;
        i3 = 0;
        for (i4 = 0; i2 < f.length; i4 = i5)
        {
          localObject = f[i2];
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
    if (g != Integer.MIN_VALUE) {
      i1 = i2 + lxz.e(7, g);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.b(8, h);
    }
    i1 = i2;
    if (i != null)
    {
      i.booleanValue();
      i1 = i2 + (lxz.f(9) + 1);
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.b(10, j);
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.b(11, k);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.b(12, l);
    }
    i1 = i2;
    if (m != null)
    {
      m.booleanValue();
      i1 = i2 + (lxz.f(13) + 1);
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.d(14, n);
    }
    i1 = i2;
    if (o != null)
    {
      o.booleanValue();
      i1 = i2 + (lxz.f(15) + 1);
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.b(16, p);
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + lxz.b(17, q);
    }
    i2 = i1;
    if (r != Integer.MIN_VALUE) {
      i2 = i1 + lxz.e(18, r);
    }
    i1 = i2;
    if (s != null)
    {
      s.booleanValue();
      i1 = i2 + (lxz.f(19) + 1);
    }
    i2 = i1;
    if (t != null)
    {
      t.booleanValue();
      i2 = i1 + (lxz.f(20) + 1);
    }
    i1 = i2;
    if (u != null) {
      i1 = i2 + lxz.b(21, u);
    }
    i2 = i1;
    if (v != null) {
      i2 = i1 + lxz.b(22, v);
    }
    i1 = i2;
    if (w != null)
    {
      w.booleanValue();
      i1 = i2 + (lxz.f(23) + 1);
    }
    i2 = i1;
    if (x != null)
    {
      i2 = i1;
      if (x.length > 0)
      {
        i2 = 0;
        while (i2 < x.length)
        {
          localObject = x[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(24, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    int i3 = i2;
    if (y != null) {
      i3 = i2 + lxz.b(25, y);
    }
    i1 = i3;
    if (z != null) {
      i1 = i3 + lxz.e(26, z.intValue());
    }
    i2 = i1;
    if (A != null)
    {
      i2 = i1;
      if (A.length > 0)
      {
        i2 = 0;
        while (i2 < A.length)
        {
          localObject = A[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(27, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (B != null)
    {
      i1 = i2;
      if (B.length > 0)
      {
        i1 = 0;
        i3 = 0;
        for (i4 = 0; i1 < B.length; i4 = i5)
        {
          localObject = B[i1];
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
    if (C != null)
    {
      i2 = i1;
      if (C.length > 0)
      {
        i3 = 0;
        i2 = i7;
        while (i2 < C.length)
        {
          i3 += lxz.e(C[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + C.length * 2;
      }
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     jmc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */