public final class kaq
  extends lyb<kaq>
{
  public jzh a = null;
  public Boolean b = null;
  public jxl[] c = jxl.d();
  public jyz d = null;
  public jyq e = null;
  public jyr f = null;
  public kct g = null;
  public jxn[] h = jxn.d();
  public Boolean i = null;
  public Boolean j = null;
  public jys k = null;
  public kds l = null;
  public Boolean m = null;
  public Boolean n = null;
  public Integer o = null;
  public kcr[] p = kcr.d();
  public Integer q = null;
  public lce r = null;
  public kdp responseHeader = null;
  public jzv[] s = jzv.d();
  public kfo t = null;
  
  public kaq()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if (a != null) {
      paramlxz.b(2, a);
    }
    if (b != null) {
      paramlxz.a(3, b.booleanValue());
    }
    int i1;
    Object localObject;
    if ((c != null) && (c.length > 0))
    {
      i1 = 0;
      while (i1 < c.length)
      {
        localObject = c[i1];
        if (localObject != null) {
          paramlxz.b(4, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (d != null) {
      paramlxz.b(5, d);
    }
    if (e != null) {
      paramlxz.b(6, e);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if ((h != null) && (h.length > 0))
    {
      i1 = 0;
      while (i1 < h.length)
      {
        localObject = h[i1];
        if (localObject != null) {
          paramlxz.b(8, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (f != null) {
      paramlxz.b(9, f);
    }
    if (i != null) {
      paramlxz.a(10, i.booleanValue());
    }
    if (k != null) {
      paramlxz.b(11, k);
    }
    if (l != null) {
      paramlxz.b(12, l);
    }
    if (j != null) {
      paramlxz.a(13, j.booleanValue());
    }
    if (m != null) {
      paramlxz.a(14, m.booleanValue());
    }
    if (n != null) {
      paramlxz.a(15, n.booleanValue());
    }
    if (o != null) {
      paramlxz.a(16, o.intValue());
    }
    if ((p != null) && (p.length > 0))
    {
      i1 = 0;
      while (i1 < p.length)
      {
        localObject = p[i1];
        if (localObject != null) {
          paramlxz.b(17, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (q != null) {
      paramlxz.a(18, q.intValue());
    }
    if (r != null) {
      paramlxz.b(19, r);
    }
    if ((s != null) && (s.length > 0))
    {
      i1 = i2;
      while (i1 < s.length)
      {
        localObject = s[i1];
        if (localObject != null) {
          paramlxz.b(20, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (t != null) {
      paramlxz.b(22, t);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i4 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (responseHeader != null) {
      i1 = i2 + lxz.d(1, responseHeader);
    }
    i2 = i1;
    if (a != null) {
      i2 = i1 + lxz.d(2, a);
    }
    i1 = i2;
    if (b != null)
    {
      b.booleanValue();
      i1 = i2 + (lxz.f(3) + 1);
    }
    i2 = i1;
    Object localObject;
    if (c != null)
    {
      i2 = i1;
      if (c.length > 0)
      {
        i2 = 0;
        while (i2 < c.length)
        {
          localObject = c[i2];
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
    if (d != null) {
      i1 = i2 + lxz.d(5, d);
    }
    i2 = i1;
    if (e != null) {
      i2 = i1 + lxz.d(6, e);
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.d(7, g);
    }
    i2 = i1;
    if (h != null)
    {
      i2 = i1;
      if (h.length > 0)
      {
        i2 = 0;
        while (i2 < h.length)
        {
          localObject = h[i2];
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
    if (f != null) {
      i1 = i2 + lxz.d(9, f);
    }
    i2 = i1;
    if (i != null)
    {
      i.booleanValue();
      i2 = i1 + (lxz.f(10) + 1);
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.d(11, k);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.d(12, l);
    }
    i1 = i2;
    if (j != null)
    {
      j.booleanValue();
      i1 = i2 + (lxz.f(13) + 1);
    }
    i2 = i1;
    if (m != null)
    {
      m.booleanValue();
      i2 = i1 + (lxz.f(14) + 1);
    }
    int i3 = i2;
    if (n != null)
    {
      n.booleanValue();
      i3 = i2 + (lxz.f(15) + 1);
    }
    i1 = i3;
    if (o != null) {
      i1 = i3 + lxz.e(16, o.intValue());
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
            i3 = i1 + lxz.d(17, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i3 = i2;
    if (q != null) {
      i3 = i2 + lxz.e(18, q.intValue());
    }
    i1 = i3;
    if (r != null) {
      i1 = i3 + lxz.d(19, r);
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
            i2 = i1 + lxz.d(20, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (t != null) {
      i1 = i2 + lxz.d(22, t);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     kaq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */