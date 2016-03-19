public final class jxs
  extends lyb<jxs>
{
  public Integer a = null;
  public Long b = null;
  public Integer c = null;
  public int[] d = lyo.a;
  public kcr e = null;
  public kbo f = null;
  public kgb g = null;
  public Long h = null;
  public Long i = null;
  public Long j = null;
  public Integer k = null;
  public Boolean l = null;
  public jxt[] m = jxt.d();
  public Integer n = null;
  public kfp o = null;
  
  public jxs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (b != null) {
      paramlxz.a(2, b.longValue());
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (a != null) {
      paramlxz.a(8, a.intValue());
    }
    if (c != null) {
      paramlxz.a(9, c.intValue());
    }
    int i1;
    if ((d != null) && (d.length > 0))
    {
      i1 = 0;
      while (i1 < d.length)
      {
        paramlxz.a(10, d[i1]);
        i1 += 1;
      }
    }
    if (e != null) {
      paramlxz.b(11, e);
    }
    if (h != null) {
      paramlxz.a(12, h.longValue());
    }
    if (j != null) {
      paramlxz.a(13, j.longValue());
    }
    if (i != null) {
      paramlxz.a(14, i.longValue());
    }
    if (k != null) {
      paramlxz.a(15, k.intValue());
    }
    if (l != null) {
      paramlxz.a(16, l.booleanValue());
    }
    if ((m != null) && (m.length > 0))
    {
      i1 = i2;
      while (i1 < m.length)
      {
        jxt localjxt = m[i1];
        if (localjxt != null) {
          paramlxz.b(17, localjxt);
        }
        i1 += 1;
      }
    }
    if (n != null) {
      paramlxz.a(18, n.intValue());
    }
    if (f != null) {
      paramlxz.b(19, f);
    }
    if (o != null) {
      paramlxz.b(20, o);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i4 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.d(2, b.longValue());
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.d(7, g);
    }
    int i3 = i2;
    if (a != null) {
      i3 = i2 + lxz.e(8, a.intValue());
    }
    i1 = i3;
    if (c != null) {
      i1 = i3 + lxz.e(9, c.intValue());
    }
    i2 = i1;
    if (d != null)
    {
      i2 = i1;
      if (d.length > 0)
      {
        i2 = 0;
        i3 = 0;
        while (i2 < d.length)
        {
          i3 += lxz.e(d[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + d.length * 1;
      }
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.d(11, e);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.d(12, h.longValue());
    }
    i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.d(13, j.longValue());
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.d(14, i.longValue());
    }
    i3 = i2;
    if (k != null) {
      i3 = i2 + lxz.e(15, k.intValue());
    }
    i1 = i3;
    if (l != null)
    {
      l.booleanValue();
      i1 = i3 + (lxz.f(16) + 1);
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
          jxt localjxt = m[i3];
          i2 = i1;
          if (localjxt != null) {
            i2 = i1 + lxz.d(17, localjxt);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.e(18, n.intValue());
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.d(19, f);
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.d(20, o);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     jxs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */