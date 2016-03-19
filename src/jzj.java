public final class jzj
  extends lyb<jzj>
{
  public Integer a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String[] f = lyo.f;
  public String[] g = lyo.f;
  public String h = null;
  public String i = null;
  public String j = null;
  public Boolean k = null;
  public Integer l = null;
  public Integer m = null;
  public String[] n = lyo.f;
  public lcd[] o = lcd.d();
  public jzk[] p = jzk.d();
  
  public jzj()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    int i1;
    Object localObject;
    if ((f != null) && (f.length > 0))
    {
      i1 = 0;
      while (i1 < f.length)
      {
        localObject = f[i1];
        if (localObject != null) {
          paramlxz.a(5, (String)localObject);
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
          paramlxz.a(6, (String)localObject);
        }
        i1 += 1;
      }
    }
    if (h != null) {
      paramlxz.a(7, h);
    }
    if (i != null) {
      paramlxz.a(8, i);
    }
    if (j != null) {
      paramlxz.a(9, j);
    }
    if (k != null) {
      paramlxz.a(10, k.booleanValue());
    }
    if (l != null) {
      paramlxz.a(11, l.intValue());
    }
    if (m != null) {
      paramlxz.a(12, m.intValue());
    }
    if ((n != null) && (n.length > 0))
    {
      i1 = 0;
      while (i1 < n.length)
      {
        localObject = n[i1];
        if (localObject != null) {
          paramlxz.a(13, (String)localObject);
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
          paramlxz.b(14, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (e != null) {
      paramlxz.a(15, e);
    }
    if ((p != null) && (p.length > 0))
    {
      i1 = i2;
      while (i1 < p.length)
      {
        localObject = p[i1];
        if (localObject != null) {
          paramlxz.b(16, (lyi)localObject);
        }
        i1 += 1;
      }
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
      i2 = i1 + lxz.b(2, b);
    }
    int i3 = i2;
    if (c != null) {
      i3 = i2 + lxz.b(3, c);
    }
    i1 = i3;
    if (d != null) {
      i1 = i3 + lxz.b(4, d);
    }
    i2 = i1;
    int i4;
    Object localObject;
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
    if (g != null)
    {
      i1 = i2;
      if (g.length > 0)
      {
        i1 = 0;
        i3 = 0;
        for (i4 = 0; i1 < g.length; i4 = i5)
        {
          localObject = g[i1];
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
    if (h != null) {
      i2 = i1 + lxz.b(7, h);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.b(8, i);
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.b(9, j);
    }
    i1 = i2;
    if (k != null)
    {
      k.booleanValue();
      i1 = i2 + (lxz.f(10) + 1);
    }
    i3 = i1;
    if (l != null) {
      i3 = i1 + lxz.e(11, l.intValue());
    }
    i2 = i3;
    if (m != null) {
      i2 = i3 + lxz.e(12, m.intValue());
    }
    i1 = i2;
    if (n != null)
    {
      i1 = i2;
      if (n.length > 0)
      {
        i1 = 0;
        i3 = 0;
        for (i4 = 0; i1 < n.length; i4 = i5)
        {
          localObject = n[i1];
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
    if (o != null)
    {
      i2 = i1;
      if (o.length > 0)
      {
        i2 = 0;
        while (i2 < o.length)
        {
          localObject = o[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(14, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(15, e);
    }
    i3 = i1;
    if (p != null)
    {
      i3 = i1;
      if (p.length > 0)
      {
        i2 = i7;
        for (;;)
        {
          i3 = i1;
          if (i2 >= p.length) {
            break;
          }
          localObject = p[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(16, (lyi)localObject);
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
 * Qualified Name:     jzj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */