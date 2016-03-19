public final class jxr
  extends lyb<jxr>
{
  public jxw a = null;
  public jzx b = null;
  public Integer c = null;
  public String d = null;
  public String e = null;
  public jxs f = null;
  public kgb[] g = kgb.d();
  public Boolean h = null;
  public Integer i = null;
  public Integer j = null;
  public kcr[] k = kcr.d();
  public jxy[] l = jxy.d();
  public Boolean m = null;
  public Boolean n = null;
  public int[] o = lyo.a;
  public Integer p = null;
  public byte[][] q = lyo.g;
  public byte[][] r = lyo.g;
  public Boolean s = null;
  public Boolean t = null;
  
  public jxr()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (c != null) {
      paramlxz.a(2, c.intValue());
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (f != null) {
      paramlxz.b(4, f);
    }
    int i1;
    Object localObject;
    if ((q != null) && (q.length > 0))
    {
      i1 = 0;
      while (i1 < q.length)
      {
        localObject = q[i1];
        if (localObject != null) {
          paramlxz.a(5, (byte[])localObject);
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
          paramlxz.a(6, (byte[])localObject);
        }
        i1 += 1;
      }
    }
    if ((g != null) && (g.length > 0))
    {
      i1 = 0;
      while (i1 < g.length)
      {
        localObject = g[i1];
        if (localObject != null) {
          paramlxz.b(8, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (h != null) {
      paramlxz.a(9, h.booleanValue());
    }
    if (i != null) {
      paramlxz.a(10, i.intValue());
    }
    if (j != null) {
      paramlxz.a(11, j.intValue());
    }
    if (s != null) {
      paramlxz.a(12, s.booleanValue());
    }
    if ((k != null) && (k.length > 0))
    {
      i1 = 0;
      while (i1 < k.length)
      {
        localObject = k[i1];
        if (localObject != null) {
          paramlxz.b(13, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if ((l != null) && (l.length > 0))
    {
      i1 = 0;
      while (i1 < l.length)
      {
        localObject = l[i1];
        if (localObject != null) {
          paramlxz.b(14, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (m != null) {
      paramlxz.a(15, m.booleanValue());
    }
    if (n != null) {
      paramlxz.a(16, n.booleanValue());
    }
    if (b != null) {
      paramlxz.b(17, b);
    }
    if ((o != null) && (o.length > 0))
    {
      i1 = i2;
      while (i1 < o.length)
      {
        paramlxz.a(18, o[i1]);
        i1 += 1;
      }
    }
    if (p != null) {
      paramlxz.a(19, p.intValue());
    }
    if (e != null) {
      paramlxz.a(20, e);
    }
    if (t != null) {
      paramlxz.a(21, t.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i7 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.d(1, a);
    }
    i2 = i1;
    if (c != null) {
      i2 = i1 + lxz.e(2, c.intValue());
    }
    int i3 = i2;
    if (d != null) {
      i3 = i2 + lxz.b(3, d);
    }
    i1 = i3;
    if (f != null) {
      i1 = i3 + lxz.d(4, f);
    }
    i2 = i1;
    int i4;
    Object localObject;
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
            i6 = i3 + lxz.a((byte[])localObject);
          }
          i2 += 1;
          i3 = i6;
        }
        i2 = i1 + i3 + i4 * 1;
      }
    }
    i1 = i2;
    if (r != null)
    {
      i1 = i2;
      if (r.length > 0)
      {
        i1 = 0;
        i3 = 0;
        for (i4 = 0; i1 < r.length; i4 = i5)
        {
          localObject = r[i1];
          i6 = i3;
          i5 = i4;
          if (localObject != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a((byte[])localObject);
          }
          i1 += 1;
          i3 = i6;
        }
        i1 = i2 + i3 + i4 * 1;
      }
    }
    i2 = i1;
    if (g != null)
    {
      i2 = i1;
      if (g.length > 0)
      {
        i2 = 0;
        while (i2 < g.length)
        {
          localObject = g[i2];
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
    i1 = i2;
    if (h != null)
    {
      h.booleanValue();
      i1 = i2 + (lxz.f(9) + 1);
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.e(10, i.intValue());
    }
    i3 = i2;
    if (j != null) {
      i3 = i2 + lxz.e(11, j.intValue());
    }
    i1 = i3;
    if (s != null)
    {
      s.booleanValue();
      i1 = i3 + (lxz.f(12) + 1);
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
            i3 = i1 + lxz.d(13, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (l != null)
    {
      i1 = i2;
      if (l.length > 0)
      {
        i1 = i2;
        i2 = 0;
        while (i2 < l.length)
        {
          localObject = l[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(14, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
      }
    }
    i2 = i1;
    if (m != null)
    {
      m.booleanValue();
      i2 = i1 + (lxz.f(15) + 1);
    }
    i3 = i2;
    if (n != null)
    {
      n.booleanValue();
      i3 = i2 + (lxz.f(16) + 1);
    }
    i1 = i3;
    if (b != null) {
      i1 = i3 + lxz.d(17, b);
    }
    i2 = i1;
    if (o != null)
    {
      i2 = i1;
      if (o.length > 0)
      {
        i3 = 0;
        i2 = i7;
        while (i2 < o.length)
        {
          i3 += lxz.e(o[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + o.length * 2;
      }
    }
    i1 = i2;
    if (p != null) {
      i1 = i2 + lxz.e(19, p.intValue());
    }
    i2 = i1;
    if (e != null) {
      i2 = i1 + lxz.b(20, e);
    }
    i1 = i2;
    if (t != null)
    {
      t.booleanValue();
      i1 = i2 + (lxz.f(21) + 1);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     jxr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */