public final class mjy
  extends lyb<mjy>
{
  private static volatile mjy[] F;
  public String A = null;
  public String B = null;
  public String C = null;
  public String D = null;
  public String E = null;
  public miv a = null;
  public Boolean b = null;
  public Integer c = null;
  public Boolean d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public String h = null;
  public String i = null;
  public mmo j = null;
  public mjz k = null;
  public mks l = null;
  public String[] m = lyo.f;
  public String[] n = lyo.f;
  public String o = null;
  public String p = null;
  public Boolean q = null;
  public mks r = null;
  public mjz s = null;
  public mkb t = null;
  public mky[] u = mky.d();
  public mkx[] v = mkx.d();
  public mmx w = null;
  public mlv x = null;
  public mlu y = null;
  public Integer z = null;
  
  public mjy()
  {
    eD = null;
    eE = -1;
  }
  
  public static mjy[] d()
  {
    if (F == null) {}
    synchronized (lyf.a)
    {
      if (F == null) {
        F = new mjy[0];
      }
      return F;
    }
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
    if (e != null) {
      paramlxz.a(3, e);
    }
    if (f != null) {
      paramlxz.a(4, f);
    }
    if (h != null) {
      paramlxz.a(5, h);
    }
    if (i != null) {
      paramlxz.a(6, i);
    }
    if (k != null) {
      paramlxz.b(7, k);
    }
    if (l != null) {
      paramlxz.b(8, l);
    }
    int i1;
    Object localObject;
    if ((m != null) && (m.length > 0))
    {
      i1 = 0;
      while (i1 < m.length)
      {
        localObject = m[i1];
        if (localObject != null) {
          paramlxz.a(9, (String)localObject);
        }
        i1 += 1;
      }
    }
    if ((n != null) && (n.length > 0))
    {
      i1 = 0;
      while (i1 < n.length)
      {
        localObject = n[i1];
        if (localObject != null) {
          paramlxz.a(10, (String)localObject);
        }
        i1 += 1;
      }
    }
    if (o != null) {
      paramlxz.a(11, o);
    }
    if (p != null) {
      paramlxz.a(12, p);
    }
    if (q != null) {
      paramlxz.a(13, q.booleanValue());
    }
    if (r != null) {
      paramlxz.b(14, r);
    }
    if (s != null) {
      paramlxz.b(15, s);
    }
    if (d != null) {
      paramlxz.a(16, d.booleanValue());
    }
    if ((u != null) && (u.length > 0))
    {
      i1 = 0;
      while (i1 < u.length)
      {
        localObject = u[i1];
        if (localObject != null) {
          paramlxz.b(17, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (w != null) {
      paramlxz.b(18, w);
    }
    if (x != null) {
      paramlxz.b(19, x);
    }
    if (y != null) {
      paramlxz.b(20, y);
    }
    if (j != null) {
      paramlxz.b(25, j);
    }
    if (z != null) {
      paramlxz.a(26, z.intValue());
    }
    if (t != null) {
      paramlxz.b(27, t);
    }
    if (A != null) {
      paramlxz.a(28, A);
    }
    if ((v != null) && (v.length > 0))
    {
      i1 = i2;
      while (i1 < v.length)
      {
        localObject = v[i1];
        if (localObject != null) {
          paramlxz.b(29, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (B != null) {
      paramlxz.a(30, B);
    }
    if (C != null) {
      paramlxz.a(31, C);
    }
    if (D != null) {
      paramlxz.a(32, D);
    }
    if (g != null) {
      paramlxz.a(33, g);
    }
    if (E != null) {
      paramlxz.a(34, E);
    }
    if (b != null) {
      paramlxz.a(35, b.booleanValue());
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
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(3, e);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.b(4, f);
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.b(5, h);
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.b(6, i);
    }
    int i3 = i2;
    if (k != null) {
      i3 = i2 + lxz.d(7, k);
    }
    i1 = i3;
    if (l != null) {
      i1 = i3 + lxz.d(8, l);
    }
    i2 = i1;
    int i4;
    Object localObject;
    int i6;
    int i5;
    if (m != null)
    {
      i2 = i1;
      if (m.length > 0)
      {
        i2 = 0;
        i3 = 0;
        for (i4 = 0; i2 < m.length; i4 = i5)
        {
          localObject = m[i2];
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
    if (o != null) {
      i2 = i1 + lxz.b(11, o);
    }
    i1 = i2;
    if (p != null) {
      i1 = i2 + lxz.b(12, p);
    }
    i2 = i1;
    if (q != null)
    {
      q.booleanValue();
      i2 = i1 + (lxz.f(13) + 1);
    }
    i1 = i2;
    if (r != null) {
      i1 = i2 + lxz.d(14, r);
    }
    i2 = i1;
    if (s != null) {
      i2 = i1 + lxz.d(15, s);
    }
    i1 = i2;
    if (d != null)
    {
      d.booleanValue();
      i1 = i2 + (lxz.f(16) + 1);
    }
    i2 = i1;
    if (u != null)
    {
      i2 = i1;
      if (u.length > 0)
      {
        i2 = 0;
        while (i2 < u.length)
        {
          localObject = u[i2];
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
    if (w != null) {
      i1 = i2 + lxz.d(18, w);
    }
    i2 = i1;
    if (x != null) {
      i2 = i1 + lxz.d(19, x);
    }
    i1 = i2;
    if (y != null) {
      i1 = i2 + lxz.d(20, y);
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.d(25, j);
    }
    i1 = i2;
    if (z != null) {
      i1 = i2 + lxz.e(26, z.intValue());
    }
    i2 = i1;
    if (t != null) {
      i2 = i1 + lxz.d(27, t);
    }
    i1 = i2;
    if (A != null) {
      i1 = i2 + lxz.b(28, A);
    }
    i2 = i1;
    if (v != null)
    {
      i2 = i1;
      if (v.length > 0)
      {
        i3 = i7;
        for (;;)
        {
          i2 = i1;
          if (i3 >= v.length) {
            break;
          }
          localObject = v[i3];
          i2 = i1;
          if (localObject != null) {
            i2 = i1 + lxz.d(29, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (B != null) {
      i1 = i2 + lxz.b(30, B);
    }
    i2 = i1;
    if (C != null) {
      i2 = i1 + lxz.b(31, C);
    }
    i1 = i2;
    if (D != null) {
      i1 = i2 + lxz.b(32, D);
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.b(33, g);
    }
    i1 = i2;
    if (E != null) {
      i1 = i2 + lxz.b(34, E);
    }
    i2 = i1;
    if (b != null)
    {
      b.booleanValue();
      i2 = i1 + (lxz.f(35) + 1);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     mjy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */