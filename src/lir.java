public final class lir
  extends lyb<lir>
{
  public String a = null;
  public lix b = null;
  public lku c = null;
  public lku d = null;
  public String e = null;
  public ljb f = null;
  public Integer g = null;
  public Integer h = null;
  public Integer i = null;
  public lja j = null;
  public lkv[] k = lkv.d();
  public lim l = null;
  public lkw[] m = lkw.d();
  public llc n = null;
  public String o = null;
  public String p = null;
  public llm q = null;
  public lit r = null;
  public lhg[] s = lhg.d();
  public liu t = null;
  public liz u = null;
  
  public lir()
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
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g.intValue());
    }
    if (h != null) {
      paramlxz.a(8, h.intValue());
    }
    if (i != null) {
      paramlxz.a(9, i.intValue());
    }
    if (j != null) {
      paramlxz.b(10, j);
    }
    int i1;
    Object localObject;
    if ((k != null) && (k.length > 0))
    {
      i1 = 0;
      while (i1 < k.length)
      {
        localObject = k[i1];
        if (localObject != null) {
          paramlxz.b(11, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (l != null) {
      paramlxz.b(12, l);
    }
    if ((m != null) && (m.length > 0))
    {
      i1 = 0;
      while (i1 < m.length)
      {
        localObject = m[i1];
        if (localObject != null) {
          paramlxz.b(13, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (n != null) {
      paramlxz.b(14, n);
    }
    if (o != null) {
      paramlxz.a(15, o);
    }
    if (p != null) {
      paramlxz.a(16, p);
    }
    if (q != null) {
      paramlxz.b(17, q);
    }
    if (r != null) {
      paramlxz.b(18, r);
    }
    if ((s != null) && (s.length > 0))
    {
      i1 = i2;
      while (i1 < s.length)
      {
        localObject = s[i1];
        if (localObject != null) {
          paramlxz.b(19, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (t != null) {
      paramlxz.b(20, t);
    }
    if (u != null) {
      paramlxz.b(21, u);
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
      i2 = i1 + lxz.d(2, b);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.d(3, c);
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
      i2 = i1 + lxz.d(6, f);
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.e(7, g.intValue());
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.e(8, h.intValue());
    }
    int i3 = i2;
    if (i != null) {
      i3 = i2 + lxz.e(9, i.intValue());
    }
    i1 = i3;
    if (j != null) {
      i1 = i3 + lxz.d(10, j);
    }
    i2 = i1;
    Object localObject;
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
            i3 = i1 + lxz.d(11, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (l != null) {
      i1 = i2 + lxz.d(12, l);
    }
    i2 = i1;
    if (m != null)
    {
      i2 = i1;
      if (m.length > 0)
      {
        i2 = 0;
        while (i2 < m.length)
        {
          localObject = m[i2];
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
    if (n != null) {
      i1 = i2 + lxz.d(14, n);
    }
    i2 = i1;
    if (o != null) {
      i2 = i1 + lxz.b(15, o);
    }
    i1 = i2;
    if (p != null) {
      i1 = i2 + lxz.b(16, p);
    }
    i2 = i1;
    if (q != null) {
      i2 = i1 + lxz.d(17, q);
    }
    i1 = i2;
    if (r != null) {
      i1 = i2 + lxz.d(18, r);
    }
    i2 = i1;
    if (s != null)
    {
      i2 = i1;
      if (s.length > 0)
      {
        i3 = i4;
        for (;;)
        {
          i2 = i1;
          if (i3 >= s.length) {
            break;
          }
          localObject = s[i3];
          i2 = i1;
          if (localObject != null) {
            i2 = i1 + lxz.d(19, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (t != null) {
      i1 = i2 + lxz.d(20, t);
    }
    i2 = i1;
    if (u != null) {
      i2 = i1 + lxz.d(21, u);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     lir
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */