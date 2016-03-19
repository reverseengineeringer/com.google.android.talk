public final class lzj
  extends lyb<lzj>
{
  public static final lyc<lyu, lzj> a = lyc.a(lzj.class, 222624570L);
  private static final lzj[] z = new lzj[0];
  public mbj b = null;
  public String c = null;
  public String d = null;
  public lzt[] e = lzt.b;
  public int f = Integer.MIN_VALUE;
  public Boolean g = null;
  public Integer h = null;
  public String i = null;
  public String j = null;
  public Boolean k = null;
  public Boolean l = null;
  public Boolean m = null;
  public String n = null;
  public String o = null;
  public lzk[] p = lzk.d();
  public String q = null;
  public Integer r = null;
  public lyu[] s = lyu.d();
  public Integer t = null;
  public lyu u = null;
  public String[] v = lyo.f;
  public int[] w = lyo.a;
  public lyu[] x = lyu.d();
  public Long y = null;
  
  public lzj()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (b != null) {
      paramlxz.b(1, b);
    }
    if (c != null) {
      paramlxz.a(2, c);
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    int i1;
    Object localObject;
    if ((e != null) && (e.length > 0))
    {
      i1 = 0;
      while (i1 < e.length)
      {
        localObject = e[i1];
        if (localObject != null) {
          paramlxz.b(4, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (f != Integer.MIN_VALUE) {
      paramlxz.a(5, f);
    }
    if (g != null) {
      paramlxz.a(6, g.booleanValue());
    }
    if (h != null) {
      paramlxz.a(7, h.intValue());
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
      paramlxz.a(11, l.booleanValue());
    }
    if (m != null) {
      paramlxz.a(12, m.booleanValue());
    }
    if (n != null) {
      paramlxz.a(13, n);
    }
    if (o != null) {
      paramlxz.a(14, o);
    }
    if ((p != null) && (p.length > 0))
    {
      i1 = 0;
      while (i1 < p.length)
      {
        localObject = p[i1];
        if (localObject != null) {
          paramlxz.b(15, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (q != null) {
      paramlxz.a(16, q);
    }
    if (r != null) {
      paramlxz.a(17, r.intValue());
    }
    if ((s != null) && (s.length > 0))
    {
      i1 = 0;
      while (i1 < s.length)
      {
        localObject = s[i1];
        if (localObject != null) {
          paramlxz.b(18, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (t != null) {
      paramlxz.a(19, t.intValue());
    }
    if (u != null) {
      paramlxz.b(20, u);
    }
    if ((v != null) && (v.length > 0))
    {
      i1 = 0;
      while (i1 < v.length)
      {
        localObject = v[i1];
        if (localObject != null) {
          paramlxz.a(21, (String)localObject);
        }
        i1 += 1;
      }
    }
    if ((w != null) && (w.length > 0))
    {
      i1 = 0;
      while (i1 < w.length)
      {
        paramlxz.a(22, w[i1]);
        i1 += 1;
      }
    }
    if ((x != null) && (x.length > 0))
    {
      i1 = i2;
      while (i1 < x.length)
      {
        localObject = x[i1];
        if (localObject != null) {
          paramlxz.b(23, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (y != null) {
      paramlxz.b(24, y.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i7 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.d(1, b);
    }
    i2 = i1;
    if (c != null) {
      i2 = i1 + lxz.b(2, c);
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.b(3, d);
    }
    i2 = i1;
    Object localObject;
    if (e != null)
    {
      i2 = i1;
      if (e.length > 0)
      {
        i2 = 0;
        while (i2 < e.length)
        {
          localObject = e[i2];
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
    if (f != Integer.MIN_VALUE) {
      i1 = i2 + lxz.e(5, f);
    }
    i2 = i1;
    if (g != null)
    {
      g.booleanValue();
      i2 = i1 + (lxz.f(6) + 1);
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.e(7, h.intValue());
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.b(8, i);
    }
    i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.b(9, j);
    }
    i2 = i1;
    if (k != null)
    {
      k.booleanValue();
      i2 = i1 + (lxz.f(10) + 1);
    }
    i1 = i2;
    if (l != null)
    {
      l.booleanValue();
      i1 = i2 + (lxz.f(11) + 1);
    }
    i2 = i1;
    if (m != null)
    {
      m.booleanValue();
      i2 = i1 + (lxz.f(12) + 1);
    }
    int i3 = i2;
    if (n != null) {
      i3 = i2 + lxz.b(13, n);
    }
    i1 = i3;
    if (o != null) {
      i1 = i3 + lxz.b(14, o);
    }
    i2 = i1;
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
            i3 = i1 + lxz.d(15, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i3 = i2;
    if (q != null) {
      i3 = i2 + lxz.b(16, q);
    }
    i1 = i3;
    if (r != null) {
      i1 = i3 + lxz.e(17, r.intValue());
    }
    i2 = i1;
    if (s != null)
    {
      i2 = i1;
      if (s.length > 0)
      {
        i2 = 0;
        while (i2 < s.length)
        {
          localObject = s[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(18, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i3 = i2;
    if (t != null) {
      i3 = i2 + lxz.e(19, t.intValue());
    }
    i1 = i3;
    if (u != null) {
      i1 = i3 + lxz.d(20, u);
    }
    i2 = i1;
    if (v != null)
    {
      i2 = i1;
      if (v.length > 0)
      {
        i2 = 0;
        i3 = 0;
        int i5;
        for (int i4 = 0; i2 < v.length; i4 = i5)
        {
          localObject = v[i2];
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
        i2 = i1 + i3 + i4 * 2;
      }
    }
    i1 = i2;
    if (w != null)
    {
      i1 = i2;
      if (w.length > 0)
      {
        i1 = 0;
        i3 = 0;
        while (i1 < w.length)
        {
          i3 += lxz.e(w[i1]);
          i1 += 1;
        }
        i1 = i2 + i3 + w.length * 2;
      }
    }
    i2 = i1;
    if (x != null)
    {
      i2 = i1;
      if (x.length > 0)
      {
        i3 = i7;
        for (;;)
        {
          i2 = i1;
          if (i3 >= x.length) {
            break;
          }
          localObject = x[i3];
          i2 = i1;
          if (localObject != null) {
            i2 = i1 + lxz.d(23, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (y != null) {
      i1 = i2 + lxz.e(24, y.longValue());
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     lzj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */