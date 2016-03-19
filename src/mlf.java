public final class mlf
  extends lyb<mlf>
{
  private static volatile mlf[] r;
  public String a = null;
  public String b = null;
  public mks c = null;
  public String[] d = lyo.f;
  public mje e = null;
  public mje f = null;
  public mje g = null;
  public int[] h = lyo.a;
  public Integer i = null;
  public String j = null;
  public String k = null;
  public String l = null;
  public Boolean m = null;
  public String n = null;
  public String o = null;
  public String p = null;
  public Boolean q = null;
  
  public mlf()
  {
    eD = null;
    eE = -1;
  }
  
  public static mlf[] d()
  {
    if (r == null) {}
    synchronized (lyf.a)
    {
      if (r == null) {
        r = new mlf[0];
      }
      return r;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    int i1;
    if ((d != null) && (d.length > 0))
    {
      i1 = 0;
      while (i1 < d.length)
      {
        String str = d[i1];
        if (str != null) {
          paramlxz.a(4, str);
        }
        i1 += 1;
      }
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if ((h != null) && (h.length > 0))
    {
      i1 = i2;
      while (i1 < h.length)
      {
        paramlxz.a(8, h[i1]);
        i1 += 1;
      }
    }
    if (i != null) {
      paramlxz.a(9, i.intValue());
    }
    if (j != null) {
      paramlxz.a(10, j);
    }
    if (k != null) {
      paramlxz.a(11, k);
    }
    if (l != null) {
      paramlxz.a(12, l);
    }
    if (m != null) {
      paramlxz.a(13, m.booleanValue());
    }
    if (n != null) {
      paramlxz.a(14, n);
    }
    if (o != null) {
      paramlxz.a(15, o);
    }
    if (p != null) {
      paramlxz.a(16, p);
    }
    if (q != null) {
      paramlxz.a(17, q.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i7 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.b(1, a);
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.b(2, b);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.d(3, c);
    }
    i2 = i1;
    int i3;
    if (d != null)
    {
      i2 = i1;
      if (d.length > 0)
      {
        i2 = 0;
        i3 = 0;
        int i5;
        for (int i4 = 0; i2 < d.length; i4 = i5)
        {
          String str = d[i2];
          int i6 = i3;
          i5 = i4;
          if (str != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a(str);
          }
          i2 += 1;
          i3 = i6;
        }
        i2 = i1 + i3 + i4 * 1;
      }
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.d(5, e);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.d(6, f);
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
        i3 = 0;
        i2 = i7;
        while (i2 < h.length)
        {
          i3 += lxz.e(h[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + h.length * 1;
      }
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.e(9, i.intValue());
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.b(10, j);
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.b(11, k);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.b(12, l);
    }
    i1 = i2;
    if (m != null)
    {
      m.booleanValue();
      i1 = i2 + (lxz.f(13) + 1);
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.b(14, n);
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.b(15, o);
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.b(16, p);
    }
    i1 = i2;
    if (q != null)
    {
      q.booleanValue();
      i1 = i2 + (lxz.f(17) + 1);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     mlf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */