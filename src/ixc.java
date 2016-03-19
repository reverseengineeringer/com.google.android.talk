public final class ixc
  extends lyb<ixc>
{
  public Boolean a = null;
  public Integer b = null;
  public Long c = null;
  public String d = null;
  public Boolean e = null;
  public Boolean f = null;
  public ivs[] g = ivs.d();
  public Integer h = null;
  public Boolean i = null;
  public ivm[] j = ivm.d();
  public Long k = null;
  public ivz l = null;
  public Boolean m = null;
  
  public ixc()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i1 = 0;
    if (a != null) {
      paramlxz.a(1, a.booleanValue());
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if (e != null) {
      paramlxz.a(3, e.booleanValue());
    }
    if (f != null) {
      paramlxz.a(4, f.booleanValue());
    }
    if (k != null) {
      paramlxz.b(5, k.longValue());
    }
    if (h != null) {
      paramlxz.a(6, h.intValue());
    }
    if (i != null) {
      paramlxz.a(7, i.booleanValue());
    }
    if (c != null) {
      paramlxz.b(8, c.longValue());
    }
    if (d != null) {
      paramlxz.a(9, d);
    }
    int n;
    Object localObject;
    if ((j != null) && (j.length > 0))
    {
      n = 0;
      while (n < j.length)
      {
        localObject = j[n];
        if (localObject != null) {
          paramlxz.b(10, (lyi)localObject);
        }
        n += 1;
      }
    }
    if (l != null) {
      paramlxz.b(11, l);
    }
    if (m != null) {
      paramlxz.a(12, m.booleanValue());
    }
    if ((g != null) && (g.length > 0))
    {
      n = i1;
      while (n < g.length)
      {
        localObject = g[n];
        if (localObject != null) {
          paramlxz.b(13, (lyi)localObject);
        }
        n += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i3 = 0;
    int i1 = super.b();
    int n = i1;
    if (a != null)
    {
      a.booleanValue();
      n = i1 + (lxz.f(1) + 1);
    }
    i1 = n;
    if (b != null) {
      i1 = n + lxz.e(2, b.intValue());
    }
    n = i1;
    if (e != null)
    {
      e.booleanValue();
      n = i1 + (lxz.f(3) + 1);
    }
    i1 = n;
    if (f != null)
    {
      f.booleanValue();
      i1 = n + (lxz.f(4) + 1);
    }
    n = i1;
    if (k != null) {
      n = i1 + lxz.e(5, k.longValue());
    }
    i1 = n;
    if (h != null) {
      i1 = n + lxz.e(6, h.intValue());
    }
    n = i1;
    if (i != null)
    {
      i.booleanValue();
      n = i1 + (lxz.f(7) + 1);
    }
    i1 = n;
    if (c != null) {
      i1 = n + lxz.e(8, c.longValue());
    }
    n = i1;
    if (d != null) {
      n = i1 + lxz.b(9, d);
    }
    i1 = n;
    Object localObject;
    if (j != null)
    {
      i1 = n;
      if (j.length > 0)
      {
        i1 = 0;
        while (i1 < j.length)
        {
          localObject = j[i1];
          i2 = n;
          if (localObject != null) {
            i2 = n + lxz.d(10, (lyi)localObject);
          }
          i1 += 1;
          n = i2;
        }
        i1 = n;
      }
    }
    int i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.d(11, l);
    }
    n = i2;
    if (m != null)
    {
      m.booleanValue();
      n = i2 + (lxz.f(12) + 1);
    }
    i2 = n;
    if (g != null)
    {
      i2 = n;
      if (g.length > 0)
      {
        i1 = i3;
        for (;;)
        {
          i2 = n;
          if (i1 >= g.length) {
            break;
          }
          localObject = g[i1];
          i2 = n;
          if (localObject != null) {
            i2 = n + lxz.d(13, (lyi)localObject);
          }
          i1 += 1;
          n = i2;
        }
      }
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     ixc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */