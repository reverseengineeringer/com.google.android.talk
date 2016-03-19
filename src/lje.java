public final class lje
  extends lyb<lje>
{
  private static volatile lje[] q;
  public String a = null;
  public lmi b = null;
  public lir c = null;
  public lio d = null;
  public lld e = null;
  public lks[] f = lks.d();
  public lma[] g = lma.d();
  public lli h = null;
  public lud[] i = lud.d();
  public lln j = null;
  public lin k = null;
  public llx l = null;
  public liw[] m = liw.d();
  public liv n = null;
  public liy o = null;
  public liq p = null;
  
  public lje()
  {
    eD = null;
    eE = -1;
  }
  
  public static lje[] d()
  {
    if (q == null) {}
    synchronized (lyf.a)
    {
      if (q == null) {
        q = new lje[0];
      }
      return q;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (c != null) {
      paramlxz.b(2, c);
    }
    if (h != null) {
      paramlxz.b(3, h);
    }
    if (b != null) {
      paramlxz.b(4, b);
    }
    if (d != null) {
      paramlxz.b(5, d);
    }
    if (e != null) {
      paramlxz.b(7, e);
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
          paramlxz.b(8, (lyi)localObject);
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
          paramlxz.b(9, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if ((i != null) && (i.length > 0))
    {
      i1 = 0;
      while (i1 < i.length)
      {
        localObject = i[i1];
        if (localObject != null) {
          paramlxz.b(10, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (j != null) {
      paramlxz.b(11, j);
    }
    if (k != null) {
      paramlxz.b(12, k);
    }
    if (l != null) {
      paramlxz.b(13, l);
    }
    if ((m != null) && (m.length > 0))
    {
      i1 = i2;
      while (i1 < m.length)
      {
        localObject = m[i1];
        if (localObject != null) {
          paramlxz.b(14, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (o != null) {
      paramlxz.b(15, o);
    }
    if (p != null) {
      paramlxz.b(16, p);
    }
    if (n != null) {
      paramlxz.b(17, n);
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
    if (c != null) {
      i2 = i1 + lxz.d(2, c);
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.d(3, h);
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.d(4, b);
    }
    int i3 = i2;
    if (d != null) {
      i3 = i2 + lxz.d(5, d);
    }
    i1 = i3;
    if (e != null) {
      i1 = i3 + lxz.d(7, e);
    }
    i2 = i1;
    Object localObject;
    if (f != null)
    {
      i2 = i1;
      if (f.length > 0)
      {
        i2 = 0;
        while (i2 < f.length)
        {
          localObject = f[i2];
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
    if (g != null)
    {
      i1 = i2;
      if (g.length > 0)
      {
        i1 = i2;
        i2 = 0;
        while (i2 < g.length)
        {
          localObject = g[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(9, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
      }
    }
    i2 = i1;
    if (i != null)
    {
      i2 = i1;
      if (i.length > 0)
      {
        i2 = 0;
        while (i2 < i.length)
        {
          localObject = i[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(10, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.d(11, j);
    }
    i2 = i1;
    if (k != null) {
      i2 = i1 + lxz.d(12, k);
    }
    i1 = i2;
    if (l != null) {
      i1 = i2 + lxz.d(13, l);
    }
    i2 = i1;
    if (m != null)
    {
      i2 = i1;
      if (m.length > 0)
      {
        i3 = i4;
        for (;;)
        {
          i2 = i1;
          if (i3 >= m.length) {
            break;
          }
          localObject = m[i3];
          i2 = i1;
          if (localObject != null) {
            i2 = i1 + lxz.d(14, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.d(15, o);
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.d(16, p);
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.d(17, n);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     lje
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */