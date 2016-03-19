public final class jgq
  extends lyb<jgq>
{
  public String a = null;
  public Integer b = null;
  public String c = null;
  public jgo d = null;
  public String e = null;
  public String f = null;
  public Double g = null;
  public jgr h = null;
  public String i = null;
  public String j = null;
  public String k = null;
  public jgn[] l = jgn.d();
  public Boolean m = null;
  public Boolean n = null;
  public String o = null;
  public String p = null;
  public String q = null;
  public Integer r = null;
  public Integer s = null;
  public jgp[] t = jgp.d();
  public Boolean u = null;
  public String v = null;
  public Boolean w = null;
  
  public jgq()
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
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g.doubleValue());
    }
    if (h != null) {
      paramlxz.b(8, h);
    }
    if (i != null) {
      paramlxz.a(10, i);
    }
    if (j != null) {
      paramlxz.a(11, j);
    }
    if (k != null) {
      paramlxz.a(12, k);
    }
    int i1;
    Object localObject;
    if ((l != null) && (l.length > 0))
    {
      i1 = 0;
      while (i1 < l.length)
      {
        localObject = l[i1];
        if (localObject != null) {
          paramlxz.b(13, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (m != null) {
      paramlxz.a(14, m.booleanValue());
    }
    if (o != null) {
      paramlxz.a(15, o);
    }
    if (p != null) {
      paramlxz.a(16, p);
    }
    if (r != null) {
      paramlxz.a(17, r.intValue());
    }
    if ((t != null) && (t.length > 0))
    {
      i1 = i2;
      while (i1 < t.length)
      {
        localObject = t[i1];
        if (localObject != null) {
          paramlxz.b(18, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (u != null) {
      paramlxz.a(19, u.booleanValue());
    }
    if (s != null) {
      paramlxz.a(20, s.intValue());
    }
    if (n != null) {
      paramlxz.a(21, n.booleanValue());
    }
    if (q != null) {
      paramlxz.a(22, q);
    }
    if (v != null) {
      paramlxz.a(23, v);
    }
    if (w != null) {
      paramlxz.a(24, w.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i4 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.b(1, a);
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.e(2, b.intValue());
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.b(3, c);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.d(4, d);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(5, e);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.b(6, f);
    }
    i1 = i2;
    if (g != null)
    {
      g.doubleValue();
      i1 = i2 + (lxz.f(7) + 8);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.d(8, h);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.b(10, i);
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.b(11, j);
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.b(12, k);
    }
    i2 = i1;
    Object localObject;
    if (l != null)
    {
      i2 = i1;
      if (l.length > 0)
      {
        i2 = 0;
        while (i2 < l.length)
        {
          localObject = l[i2];
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
    if (m != null)
    {
      m.booleanValue();
      i1 = i2 + (lxz.f(14) + 1);
    }
    i2 = i1;
    if (o != null) {
      i2 = i1 + lxz.b(15, o);
    }
    int i3 = i2;
    if (p != null) {
      i3 = i2 + lxz.b(16, p);
    }
    i1 = i3;
    if (r != null) {
      i1 = i3 + lxz.e(17, r.intValue());
    }
    i2 = i1;
    if (t != null)
    {
      i2 = i1;
      if (t.length > 0)
      {
        i3 = i4;
        for (;;)
        {
          i2 = i1;
          if (i3 >= t.length) {
            break;
          }
          localObject = t[i3];
          i2 = i1;
          if (localObject != null) {
            i2 = i1 + lxz.d(18, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (u != null)
    {
      u.booleanValue();
      i1 = i2 + (lxz.f(19) + 1);
    }
    i2 = i1;
    if (s != null) {
      i2 = i1 + lxz.e(20, s.intValue());
    }
    i1 = i2;
    if (n != null)
    {
      n.booleanValue();
      i1 = i2 + (lxz.f(21) + 1);
    }
    i2 = i1;
    if (q != null) {
      i2 = i1 + lxz.b(22, q);
    }
    i1 = i2;
    if (v != null) {
      i1 = i2 + lxz.b(23, v);
    }
    i2 = i1;
    if (w != null)
    {
      w.booleanValue();
      i2 = i1 + (lxz.f(24) + 1);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     jgq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */