public final class juu
  extends lyb<juu>
{
  private static volatile juu[] n;
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public Integer f = null;
  public Integer g = null;
  public juv[] h = juv.d();
  public juv[] i = juv.d();
  public juv[] j = juv.d();
  public juv[] k = juv.d();
  public juv[] l = juv.d();
  public juv[] m = juv.d();
  
  public juu()
  {
    eD = null;
    eE = -1;
  }
  
  public static juu[] d()
  {
    if (n == null) {}
    synchronized (lyf.a)
    {
      if (n == null) {
        n = new juu[0];
      }
      return n;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (a != null) {
      paramlxz.a(2, a);
    }
    if (b != null) {
      paramlxz.a(3, b);
    }
    if (c != null) {
      paramlxz.a(4, c);
    }
    if (d != null) {
      paramlxz.a(5, d);
    }
    if (e != null) {
      paramlxz.a(6, e);
    }
    if (f != null) {
      paramlxz.a(7, f.intValue());
    }
    if (g != null) {
      paramlxz.a(8, g.intValue());
    }
    int i1;
    juv localjuv;
    if ((h != null) && (h.length > 0))
    {
      i1 = 0;
      while (i1 < h.length)
      {
        localjuv = h[i1];
        if (localjuv != null) {
          paramlxz.b(9, localjuv);
        }
        i1 += 1;
      }
    }
    if ((i != null) && (i.length > 0))
    {
      i1 = 0;
      while (i1 < i.length)
      {
        localjuv = i[i1];
        if (localjuv != null) {
          paramlxz.b(10, localjuv);
        }
        i1 += 1;
      }
    }
    if ((j != null) && (j.length > 0))
    {
      i1 = 0;
      while (i1 < j.length)
      {
        localjuv = j[i1];
        if (localjuv != null) {
          paramlxz.b(11, localjuv);
        }
        i1 += 1;
      }
    }
    if ((k != null) && (k.length > 0))
    {
      i1 = 0;
      while (i1 < k.length)
      {
        localjuv = k[i1];
        if (localjuv != null) {
          paramlxz.b(12, localjuv);
        }
        i1 += 1;
      }
    }
    if ((l != null) && (l.length > 0))
    {
      i1 = 0;
      while (i1 < l.length)
      {
        localjuv = l[i1];
        if (localjuv != null) {
          paramlxz.b(13, localjuv);
        }
        i1 += 1;
      }
    }
    if ((m != null) && (m.length > 0))
    {
      i1 = i2;
      while (i1 < m.length)
      {
        localjuv = m[i1];
        if (localjuv != null) {
          paramlxz.b(14, localjuv);
        }
        i1 += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i4 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.b(2, a);
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.b(3, b);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.b(4, c);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.b(5, d);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(6, e);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.e(7, f.intValue());
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.e(8, g.intValue());
    }
    i2 = i1;
    juv localjuv;
    if (h != null)
    {
      i2 = i1;
      if (h.length > 0)
      {
        i2 = 0;
        while (i2 < h.length)
        {
          localjuv = h[i2];
          i3 = i1;
          if (localjuv != null) {
            i3 = i1 + lxz.d(9, localjuv);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (i != null)
    {
      i1 = i2;
      if (i.length > 0)
      {
        i1 = i2;
        i2 = 0;
        while (i2 < i.length)
        {
          localjuv = i[i2];
          i3 = i1;
          if (localjuv != null) {
            i3 = i1 + lxz.d(10, localjuv);
          }
          i2 += 1;
          i1 = i3;
        }
      }
    }
    i2 = i1;
    if (j != null)
    {
      i2 = i1;
      if (j.length > 0)
      {
        i2 = 0;
        while (i2 < j.length)
        {
          localjuv = j[i2];
          i3 = i1;
          if (localjuv != null) {
            i3 = i1 + lxz.d(11, localjuv);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    int i3 = i2;
    if (k != null)
    {
      i3 = i2;
      if (k.length > 0)
      {
        i1 = i2;
        i2 = 0;
        while (i2 < k.length)
        {
          localjuv = k[i2];
          i3 = i1;
          if (localjuv != null) {
            i3 = i1 + lxz.d(12, localjuv);
          }
          i2 += 1;
          i1 = i3;
        }
        i3 = i1;
      }
    }
    i1 = i3;
    if (l != null)
    {
      i1 = i3;
      if (l.length > 0)
      {
        i1 = i3;
        i2 = 0;
        while (i2 < l.length)
        {
          localjuv = l[i2];
          i3 = i1;
          if (localjuv != null) {
            i3 = i1 + lxz.d(13, localjuv);
          }
          i2 += 1;
          i1 = i3;
        }
      }
    }
    i3 = i1;
    if (m != null)
    {
      i3 = i1;
      if (m.length > 0)
      {
        i2 = i4;
        for (;;)
        {
          i3 = i1;
          if (i2 >= m.length) {
            break;
          }
          localjuv = m[i2];
          i3 = i1;
          if (localjuv != null) {
            i3 = i1 + lxz.d(14, localjuv);
          }
          i2 += 1;
          i1 = i3;
        }
      }
    }
    return i3;
  }
}

/* Location:
 * Qualified Name:     juu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */