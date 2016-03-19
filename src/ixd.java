public final class ixd
  extends lyb<ixd>
{
  public Boolean a = null;
  public String[] b = lyo.f;
  public String[] c = lyo.f;
  public String d = null;
  public String[] e = lyo.f;
  public int[] f = lyo.a;
  public long[] g = lyo.b;
  public Integer h = null;
  public Integer i = null;
  public int[] j = lyo.a;
  public ivm[] k = ivm.d();
  public long[] l = lyo.b;
  public long[] m = lyo.b;
  public Boolean n = null;
  public int[] o = lyo.a;
  public Boolean p = null;
  public String[] q = lyo.f;
  public Long r = null;
  public ixh s = null;
  public ixr t = null;
  public iwi u = null;
  public Integer v = null;
  
  public ixd()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (a != null) {
      paramlxz.a(1, a.booleanValue());
    }
    int i1;
    if ((l != null) && (l.length > 0))
    {
      i1 = 0;
      while (i1 < l.length)
      {
        paramlxz.b(2, l[i1]);
        i1 += 1;
      }
    }
    if ((m != null) && (m.length > 0))
    {
      i1 = 0;
      while (i1 < m.length)
      {
        paramlxz.b(3, m[i1]);
        i1 += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (h != null) {
      paramlxz.a(5, h.intValue());
    }
    if ((g != null) && (g.length > 0))
    {
      i1 = 0;
      while (i1 < g.length)
      {
        paramlxz.b(6, g[i1]);
        i1 += 1;
      }
    }
    if (n != null) {
      paramlxz.a(7, n.booleanValue());
    }
    Object localObject;
    if ((b != null) && (b.length > 0))
    {
      i1 = 0;
      while (i1 < b.length)
      {
        localObject = b[i1];
        if (localObject != null) {
          paramlxz.a(8, (String)localObject);
        }
        i1 += 1;
      }
    }
    if ((c != null) && (c.length > 0))
    {
      i1 = 0;
      while (i1 < c.length)
      {
        localObject = c[i1];
        if (localObject != null) {
          paramlxz.a(9, (String)localObject);
        }
        i1 += 1;
      }
    }
    if ((j != null) && (j.length > 0))
    {
      i1 = 0;
      while (i1 < j.length)
      {
        paramlxz.a(10, j[i1]);
        i1 += 1;
      }
    }
    if ((o != null) && (o.length > 0))
    {
      i1 = 0;
      while (i1 < o.length)
      {
        paramlxz.a(11, o[i1]);
        i1 += 1;
      }
    }
    if (p != null) {
      paramlxz.a(12, p.booleanValue());
    }
    if ((f != null) && (f.length > 0))
    {
      i1 = 0;
      while (i1 < f.length)
      {
        paramlxz.a(13, f[i1]);
        i1 += 1;
      }
    }
    if (i != null) {
      paramlxz.a(14, i.intValue());
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
    if (r != null) {
      paramlxz.b(16, r.longValue());
    }
    if ((k != null) && (k.length > 0))
    {
      i1 = 0;
      while (i1 < k.length)
      {
        localObject = k[i1];
        if (localObject != null) {
          paramlxz.b(17, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if ((e != null) && (e.length > 0))
    {
      i1 = i2;
      while (i1 < e.length)
      {
        localObject = e[i1];
        if (localObject != null) {
          paramlxz.a(19, (String)localObject);
        }
        i1 += 1;
      }
    }
    if (t != null) {
      paramlxz.b(20, t);
    }
    if (s != null) {
      paramlxz.b(21, s);
    }
    if (u != null) {
      paramlxz.b(22, u);
    }
    if (v != null) {
      paramlxz.a(23, v.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i7 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (a != null)
    {
      a.booleanValue();
      i1 = i2 + (lxz.f(1) + 1);
    }
    i2 = i1;
    if (l != null)
    {
      i2 = i1;
      if (l.length > 0)
      {
        i2 = 0;
        i3 = 0;
        while (i2 < l.length)
        {
          i3 += lxz.b(l[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + l.length * 1;
      }
    }
    i1 = i2;
    if (m != null)
    {
      i1 = i2;
      if (m.length > 0)
      {
        i1 = 0;
        i3 = 0;
        while (i1 < m.length)
        {
          i3 += lxz.b(m[i1]);
          i1 += 1;
        }
        i1 = i2 + i3 + m.length * 1;
      }
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.b(4, d);
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.e(5, h.intValue());
    }
    i2 = i1;
    if (g != null)
    {
      i2 = i1;
      if (g.length > 0)
      {
        i2 = 0;
        i3 = 0;
        while (i2 < g.length)
        {
          i3 += lxz.b(g[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + g.length * 1;
      }
    }
    i1 = i2;
    if (n != null)
    {
      n.booleanValue();
      i1 = i2 + (lxz.f(7) + 1);
    }
    i2 = i1;
    int i4;
    Object localObject;
    int i6;
    int i5;
    if (b != null)
    {
      i2 = i1;
      if (b.length > 0)
      {
        i2 = 0;
        i3 = 0;
        for (i4 = 0; i2 < b.length; i4 = i5)
        {
          localObject = b[i2];
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
    if (c != null)
    {
      i1 = i2;
      if (c.length > 0)
      {
        i1 = 0;
        i3 = 0;
        for (i4 = 0; i1 < c.length; i4 = i5)
        {
          localObject = c[i1];
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
    if (j != null)
    {
      i2 = i1;
      if (j.length > 0)
      {
        i2 = 0;
        i3 = 0;
        while (i2 < j.length)
        {
          i3 += lxz.e(j[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + j.length * 1;
      }
    }
    int i3 = i2;
    if (o != null)
    {
      i3 = i2;
      if (o.length > 0)
      {
        i1 = 0;
        i3 = 0;
        while (i1 < o.length)
        {
          i3 += lxz.e(o[i1]);
          i1 += 1;
        }
        i3 = i2 + i3 + o.length * 1;
      }
    }
    i1 = i3;
    if (p != null)
    {
      p.booleanValue();
      i1 = i3 + (lxz.f(12) + 1);
    }
    i2 = i1;
    if (f != null)
    {
      i2 = i1;
      if (f.length > 0)
      {
        i2 = 0;
        i3 = 0;
        while (i2 < f.length)
        {
          i3 += lxz.e(f[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + f.length * 1;
      }
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.e(14, i.intValue());
    }
    i2 = i1;
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
    i1 = i2;
    if (r != null) {
      i1 = i2 + lxz.e(16, r.longValue());
    }
    i2 = i1;
    if (k != null)
    {
      i2 = i1;
      if (k.length > 0)
      {
        i2 = 0;
        while (i2 < k.length)
        {
          localObject = k[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(17, (lyi)localObject);
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
        i3 = 0;
        i4 = 0;
        i1 = i7;
        while (i1 < e.length)
        {
          localObject = e[i1];
          i6 = i3;
          i5 = i4;
          if (localObject != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a((String)localObject);
          }
          i1 += 1;
          i3 = i6;
          i4 = i5;
        }
        i1 = i2 + i3 + i4 * 2;
      }
    }
    i2 = i1;
    if (t != null) {
      i2 = i1 + lxz.d(20, t);
    }
    i1 = i2;
    if (s != null) {
      i1 = i2 + lxz.d(21, s);
    }
    i2 = i1;
    if (u != null) {
      i2 = i1 + lxz.d(22, u);
    }
    i1 = i2;
    if (v != null) {
      i1 = i2 + lxz.e(23, v.intValue());
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     ixd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */