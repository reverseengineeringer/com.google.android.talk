public final class juk
  extends lyb<juk>
{
  private static volatile juk[] s;
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  public jun[] d = jun.d();
  public jul[] e = jul.d();
  public Integer f = null;
  public Integer g = null;
  public Integer h = null;
  public Integer i = null;
  public Integer j = null;
  public Integer k = null;
  public Integer l = null;
  public Integer m = null;
  public Float n = null;
  public Integer o = null;
  public Integer p = null;
  public Boolean q = null;
  public Integer r = null;
  
  public juk()
  {
    eD = null;
    eE = -1;
  }
  
  public static juk[] d()
  {
    if (s == null) {}
    synchronized (lyf.a)
    {
      if (s == null) {
        s = new juk[0];
      }
      return s;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    paramlxz.a(6, a.intValue());
    int i1;
    Object localObject;
    if ((d != null) && (d.length > 0))
    {
      i1 = 0;
      while (i1 < d.length)
      {
        localObject = d[i1];
        if (localObject != null) {
          paramlxz.a(7, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if ((e != null) && (e.length > 0))
    {
      i1 = i2;
      while (i1 < e.length)
      {
        localObject = e[i1];
        if (localObject != null) {
          paramlxz.a(18, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (f != null) {
      paramlxz.a(39, f.intValue());
    }
    if (j != null) {
      paramlxz.a(40, j.intValue());
    }
    if (k != null) {
      paramlxz.a(41, k.intValue());
    }
    if (l != null) {
      paramlxz.a(59, l.intValue());
    }
    if (m != null) {
      paramlxz.a(71, m.intValue());
    }
    if (n != null) {
      paramlxz.a(76, n.floatValue());
    }
    if (o != null) {
      paramlxz.a(77, o.intValue());
    }
    if (p != null) {
      paramlxz.a(78, p.intValue());
    }
    if (q != null) {
      paramlxz.a(79, q.booleanValue());
    }
    if (r != null) {
      paramlxz.a(80, r.intValue());
    }
    if (g != null) {
      paramlxz.a(97, g.intValue());
    }
    if (i != null) {
      paramlxz.a(98, i.intValue());
    }
    if (h != null) {
      paramlxz.a(99, h.intValue());
    }
    if (b != null) {
      paramlxz.a(118, b.intValue());
    }
    if (c != null) {
      paramlxz.a(123, c.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i4 = 0;
    int i2 = super.b() + lxz.e(6, a.intValue());
    int i1 = i2;
    Object localObject;
    int i3;
    if (d != null)
    {
      i1 = i2;
      if (d.length > 0)
      {
        i1 = i2;
        i2 = 0;
        while (i2 < d.length)
        {
          localObject = d[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.c(7, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
      }
    }
    i2 = i1;
    if (e != null)
    {
      i2 = i1;
      if (e.length > 0)
      {
        i3 = i4;
        for (;;)
        {
          i2 = i1;
          if (i3 >= e.length) {
            break;
          }
          localObject = e[i3];
          i2 = i1;
          if (localObject != null) {
            i2 = i1 + lxz.c(18, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.e(39, f.intValue());
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.e(40, j.intValue());
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.e(41, k.intValue());
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.e(59, l.intValue());
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.e(71, m.intValue());
    }
    i2 = i1;
    if (n != null)
    {
      n.floatValue();
      i2 = i1 + (lxz.f(76) + 4);
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.e(77, o.intValue());
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.e(78, p.intValue());
    }
    i1 = i2;
    if (q != null)
    {
      q.booleanValue();
      i1 = i2 + (lxz.f(79) + 1);
    }
    i2 = i1;
    if (r != null) {
      i2 = i1 + lxz.e(80, r.intValue());
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.e(97, g.intValue());
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.e(98, i.intValue());
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.e(99, h.intValue());
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.e(118, b.intValue());
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.e(123, c.intValue());
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     juk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */