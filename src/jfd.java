public final class jfd
  extends lyb<jfd>
{
  private static volatile jfd[] q;
  public String a = null;
  public String b = null;
  public Integer c = null;
  public jfa d = null;
  public String e = null;
  public jgk f = null;
  public String g = null;
  public Long h = null;
  public Long i = null;
  public String j = null;
  public String k = null;
  public jfb l = null;
  public String m = null;
  public jgg n = null;
  public jgj[] o = jgj.d();
  public String p = null;
  
  public jfd()
  {
    eD = null;
    eE = -1;
  }
  
  public static jfd[] d()
  {
    if (q == null) {}
    synchronized (lyf.a)
    {
      if (q == null) {
        q = new jfd[0];
      }
      return q;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b);
    }
    if (g != null) {
      paramlxz.a(2, g);
    }
    if (h != null) {
      paramlxz.b(3, h.longValue());
    }
    if (j != null) {
      paramlxz.a(4, j);
    }
    if (c != null) {
      paramlxz.a(5, c.intValue());
    }
    if (l != null) {
      paramlxz.b(6, l);
    }
    if (m != null) {
      paramlxz.a(7, m);
    }
    if (d != null) {
      paramlxz.b(8, d);
    }
    if (n != null) {
      paramlxz.b(9, n);
    }
    if ((o != null) && (o.length > 0))
    {
      int i1 = 0;
      while (i1 < o.length)
      {
        jgj localjgj = o[i1];
        if (localjgj != null) {
          paramlxz.b(10, localjgj);
        }
        i1 += 1;
      }
    }
    if (i != null) {
      paramlxz.b(11, i.longValue());
    }
    if (a != null) {
      paramlxz.a(12, a);
    }
    if (e != null) {
      paramlxz.a(13, e);
    }
    if (k != null) {
      paramlxz.a(14, k);
    }
    if (p != null) {
      paramlxz.a(15, p);
    }
    if (f != null) {
      paramlxz.b(16, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.b(1, b);
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.b(2, g);
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.e(3, h.longValue());
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.b(4, j);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.e(5, c.intValue());
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.d(6, l);
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.b(7, m);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.d(8, d);
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.d(9, n);
    }
    i2 = i1;
    if (o != null)
    {
      i2 = i1;
      if (o.length > 0)
      {
        i2 = 0;
        while (i2 < o.length)
        {
          jgj localjgj = o[i2];
          int i3 = i1;
          if (localjgj != null) {
            i3 = i1 + lxz.d(10, localjgj);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.e(11, i.longValue());
    }
    i2 = i1;
    if (a != null) {
      i2 = i1 + lxz.b(12, a);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(13, e);
    }
    i2 = i1;
    if (k != null) {
      i2 = i1 + lxz.b(14, k);
    }
    i1 = i2;
    if (p != null) {
      i1 = i2 + lxz.b(15, p);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.d(16, f);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     jfd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */