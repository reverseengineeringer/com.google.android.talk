public final class kju
  extends lyb<kju>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public jui f = null;
  public jur g = null;
  public jut h = null;
  public juw i = null;
  public jvc j = null;
  public juq k = null;
  public juy l = null;
  public jux m = null;
  public String[] n = lyo.f;
  public Boolean o = null;
  public Integer p = null;
  public String q = null;
  public String r = null;
  public Boolean s = null;
  public Long t = null;
  public Long u = null;
  
  public kju()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (e != null) {
      paramlxz.a(3, e);
    }
    if (f != null) {
      paramlxz.b(4, f);
    }
    if (g != null) {
      paramlxz.b(5, g);
    }
    if (h != null) {
      paramlxz.b(6, h);
    }
    if (i != null) {
      paramlxz.b(7, i);
    }
    if (j != null) {
      paramlxz.b(8, j);
    }
    if (p != null) {
      paramlxz.a(9, p.intValue());
    }
    if (k != null) {
      paramlxz.b(10, k);
    }
    if ((n != null) && (n.length > 0))
    {
      int i1 = 0;
      while (i1 < n.length)
      {
        String str = n[i1];
        if (str != null) {
          paramlxz.a(11, str);
        }
        i1 += 1;
      }
    }
    if (o != null) {
      paramlxz.a(12, o.booleanValue());
    }
    if (q != null) {
      paramlxz.a(13, q);
    }
    if (c != null) {
      paramlxz.a(14, c);
    }
    if (m != null) {
      paramlxz.b(15, m);
    }
    if (r != null) {
      paramlxz.a(16, r);
    }
    if (l != null) {
      paramlxz.b(17, l);
    }
    if (s != null) {
      paramlxz.a(18, s.booleanValue());
    }
    if (t != null) {
      paramlxz.b(19, t.longValue());
    }
    if (u != null) {
      paramlxz.b(20, u.longValue());
    }
    if (d != null) {
      paramlxz.a(21, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i5 = 0;
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
    if (e != null) {
      i1 = i2 + lxz.b(3, e);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.d(4, f);
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.d(5, g);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.d(6, h);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.d(7, i);
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.d(8, j);
    }
    int i3 = i2;
    if (p != null) {
      i3 = i2 + lxz.e(9, p.intValue());
    }
    i1 = i3;
    if (k != null) {
      i1 = i3 + lxz.d(10, k);
    }
    i2 = i1;
    if (n != null)
    {
      i2 = i1;
      if (n.length > 0)
      {
        i3 = 0;
        int i4 = 0;
        i2 = i5;
        while (i2 < n.length)
        {
          String str = n[i2];
          int i6 = i3;
          i5 = i4;
          if (str != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a(str);
          }
          i2 += 1;
          i3 = i6;
          i4 = i5;
        }
        i2 = i1 + i3 + i4 * 1;
      }
    }
    i1 = i2;
    if (o != null)
    {
      o.booleanValue();
      i1 = i2 + (lxz.f(12) + 1);
    }
    i2 = i1;
    if (q != null) {
      i2 = i1 + lxz.b(13, q);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.b(14, c);
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.d(15, m);
    }
    i1 = i2;
    if (r != null) {
      i1 = i2 + lxz.b(16, r);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.d(17, l);
    }
    i1 = i2;
    if (s != null)
    {
      s.booleanValue();
      i1 = i2 + (lxz.f(18) + 1);
    }
    i2 = i1;
    if (t != null) {
      i2 = i1 + lxz.e(19, t.longValue());
    }
    i1 = i2;
    if (u != null) {
      i1 = i2 + lxz.e(20, u.longValue());
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.b(21, d);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     kju
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */