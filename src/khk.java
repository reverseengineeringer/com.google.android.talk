public final class khk
  extends lyb<khk>
{
  private static volatile khk[] y;
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public Boolean f = null;
  public Boolean g = null;
  public khl[] h = khl.d();
  public String[] i = lyo.f;
  public Boolean j = null;
  public String k = null;
  public String l = null;
  public Integer m = null;
  public Integer n = null;
  public Integer o = null;
  public kic p = null;
  public Integer q = null;
  public Boolean r = null;
  public int[] s = lyo.a;
  public Boolean t = null;
  public lbz u = null;
  public Long v = null;
  public Integer w = null;
  public String x = null;
  
  public khk()
  {
    eD = null;
    eE = -1;
  }
  
  public static khk[] d()
  {
    if (y == null) {}
    synchronized (lyf.a)
    {
      if (y == null) {
        y = new khk[0];
      }
      return y;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (a != null) {
      paramlxz.a(1, a);
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
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f.booleanValue());
    }
    if (g != null) {
      paramlxz.a(7, g.booleanValue());
    }
    int i1;
    Object localObject;
    if ((i != null) && (i.length > 0))
    {
      i1 = 0;
      while (i1 < i.length)
      {
        localObject = i[i1];
        if (localObject != null) {
          paramlxz.a(8, (String)localObject);
        }
        i1 += 1;
      }
    }
    if (j != null) {
      paramlxz.a(9, j.booleanValue());
    }
    if (k != null) {
      paramlxz.a(10, k);
    }
    if (l != null) {
      paramlxz.a(11, l);
    }
    if (m != null) {
      paramlxz.a(12, m.intValue());
    }
    if (n != null) {
      paramlxz.a(13, n.intValue());
    }
    if (o != null) {
      paramlxz.a(14, o.intValue());
    }
    if (p != null) {
      paramlxz.b(16, p);
    }
    if (q != null) {
      paramlxz.a(17, q.intValue());
    }
    if (r != null) {
      paramlxz.a(18, r.booleanValue());
    }
    if ((s != null) && (s.length > 0))
    {
      i1 = 0;
      while (i1 < s.length)
      {
        paramlxz.a(19, s[i1]);
        i1 += 1;
      }
    }
    if ((h != null) && (h.length > 0))
    {
      i1 = i2;
      while (i1 < h.length)
      {
        localObject = h[i1];
        if (localObject != null) {
          paramlxz.b(20, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (t != null) {
      paramlxz.a(21, t.booleanValue());
    }
    if (u != null) {
      paramlxz.b(22, u);
    }
    if (v != null) {
      paramlxz.b(23, v.longValue());
    }
    if (w != null) {
      paramlxz.a(24, w.intValue());
    }
    if (x != null) {
      paramlxz.a(25, x);
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
    if (b != null) {
      i2 = i1 + lxz.b(2, b);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.b(3, c);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.b(4, d);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(5, e);
    }
    i2 = i1;
    if (f != null)
    {
      f.booleanValue();
      i2 = i1 + (lxz.f(6) + 1);
    }
    i1 = i2;
    if (g != null)
    {
      g.booleanValue();
      i1 = i2 + (lxz.f(7) + 1);
    }
    i2 = i1;
    Object localObject;
    if (i != null)
    {
      i2 = i1;
      if (i.length > 0)
      {
        i2 = 0;
        i3 = 0;
        int i5;
        for (int i4 = 0; i2 < i.length; i4 = i5)
        {
          localObject = i[i2];
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
    if (j != null)
    {
      j.booleanValue();
      i1 = i2 + (lxz.f(9) + 1);
    }
    i2 = i1;
    if (k != null) {
      i2 = i1 + lxz.b(10, k);
    }
    i1 = i2;
    if (l != null) {
      i1 = i2 + lxz.b(11, l);
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.e(12, m.intValue());
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.e(13, n.intValue());
    }
    i2 = i1;
    if (o != null) {
      i2 = i1 + lxz.e(14, o.intValue());
    }
    i1 = i2;
    if (p != null) {
      i1 = i2 + lxz.d(16, p);
    }
    int i3 = i1;
    if (q != null) {
      i3 = i1 + lxz.e(17, q.intValue());
    }
    i2 = i3;
    if (r != null)
    {
      r.booleanValue();
      i2 = i3 + (lxz.f(18) + 1);
    }
    i1 = i2;
    if (s != null)
    {
      i1 = i2;
      if (s.length > 0)
      {
        i1 = 0;
        i3 = 0;
        while (i1 < s.length)
        {
          i3 += lxz.e(s[i1]);
          i1 += 1;
        }
        i1 = i2 + i3 + s.length * 2;
      }
    }
    i2 = i1;
    if (h != null)
    {
      i2 = i1;
      if (h.length > 0)
      {
        i3 = i7;
        for (;;)
        {
          i2 = i1;
          if (i3 >= h.length) {
            break;
          }
          localObject = h[i3];
          i2 = i1;
          if (localObject != null) {
            i2 = i1 + lxz.d(20, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (t != null)
    {
      t.booleanValue();
      i1 = i2 + (lxz.f(21) + 1);
    }
    i2 = i1;
    if (u != null) {
      i2 = i1 + lxz.d(22, u);
    }
    i1 = i2;
    if (v != null) {
      i1 = i2 + lxz.e(23, v.longValue());
    }
    i2 = i1;
    if (w != null) {
      i2 = i1 + lxz.e(24, w.intValue());
    }
    i1 = i2;
    if (x != null) {
      i1 = i2 + lxz.b(25, x);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     khk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */