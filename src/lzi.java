public final class lzi
  extends lyb<lzi>
{
  public static final lyc<lyt, lzi> a = lyc.a(lzi.class, 293893994L);
  public static final lyc<msu, lzi> b = lyc.a(lzi.class, 293893994L);
  private static final lzi[] s = new lzi[0];
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public lzf h = null;
  public String i = null;
  public lyt[] j = lyt.d();
  public lyt k = null;
  public lyt[] l = lyt.d();
  public String m = null;
  public Double n = null;
  public Double o = null;
  public String p = null;
  public lyt q = null;
  public String r = null;
  
  public lzi()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (c != null) {
      paramlxz.a(1, c);
    }
    if (d != null) {
      paramlxz.a(2, d);
    }
    if (e != null) {
      paramlxz.a(3, e);
    }
    if (f != null) {
      paramlxz.a(4, f);
    }
    if (g != null) {
      paramlxz.a(5, g);
    }
    if (h != null) {
      paramlxz.b(6, h);
    }
    if (i != null) {
      paramlxz.a(7, i);
    }
    int i1;
    lyt locallyt;
    if ((j != null) && (j.length > 0))
    {
      i1 = 0;
      while (i1 < j.length)
      {
        locallyt = j[i1];
        if (locallyt != null) {
          paramlxz.b(8, locallyt);
        }
        i1 += 1;
      }
    }
    if (k != null) {
      paramlxz.b(9, k);
    }
    if ((l != null) && (l.length > 0))
    {
      i1 = i2;
      while (i1 < l.length)
      {
        locallyt = l[i1];
        if (locallyt != null) {
          paramlxz.b(11, locallyt);
        }
        i1 += 1;
      }
    }
    if (m != null) {
      paramlxz.a(12, m);
    }
    if (n != null) {
      paramlxz.a(36, n.doubleValue());
    }
    if (o != null) {
      paramlxz.a(37, o.doubleValue());
    }
    if (p != null) {
      paramlxz.a(75, p);
    }
    if (q != null) {
      paramlxz.b(185, q);
    }
    if (r != null) {
      paramlxz.a(254, r);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i4 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.b(1, c);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.b(2, d);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(3, e);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.b(4, f);
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.b(5, g);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.d(6, h);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.b(7, i);
    }
    i2 = i1;
    lyt locallyt;
    int i3;
    if (j != null)
    {
      i2 = i1;
      if (j.length > 0)
      {
        i2 = 0;
        while (i2 < j.length)
        {
          locallyt = j[i2];
          i3 = i1;
          if (locallyt != null) {
            i3 = i1 + lxz.d(8, locallyt);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.d(9, k);
    }
    i2 = i1;
    if (l != null)
    {
      i2 = i1;
      if (l.length > 0)
      {
        i3 = i4;
        for (;;)
        {
          i2 = i1;
          if (i3 >= l.length) {
            break;
          }
          locallyt = l[i3];
          i2 = i1;
          if (locallyt != null) {
            i2 = i1 + lxz.d(11, locallyt);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.b(12, m);
    }
    i2 = i1;
    if (n != null)
    {
      n.doubleValue();
      i2 = i1 + (lxz.f(36) + 8);
    }
    i1 = i2;
    if (o != null)
    {
      o.doubleValue();
      i1 = i2 + (lxz.f(37) + 8);
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.b(75, p);
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + lxz.d(185, q);
    }
    i2 = i1;
    if (r != null) {
      i2 = i1 + lxz.b(254, r);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     lzi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */