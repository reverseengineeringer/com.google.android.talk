public final class jhp
  extends lyb<jhp>
{
  public Integer a = null;
  public Integer b = null;
  public Float c = null;
  public Float d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public String h = null;
  public jhq i = null;
  public String j = null;
  public String k = null;
  public String l = null;
  public String m = null;
  public Boolean n = null;
  public Double o = null;
  public Boolean p = null;
  public String q = null;
  public jhz[] r = jhz.d();
  
  public jhp()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (c != null) {
      paramlxz.a(1, c.floatValue());
    }
    if (d != null) {
      paramlxz.a(2, d.floatValue());
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
      paramlxz.a(6, h);
    }
    if (i != null) {
      paramlxz.b(7, i);
    }
    if (j != null) {
      paramlxz.a(8, j);
    }
    if (k != null) {
      paramlxz.a(9, k);
    }
    if (l != null) {
      paramlxz.a(10, l);
    }
    if (m != null) {
      paramlxz.a(11, m);
    }
    if (n != null) {
      paramlxz.a(12, n.booleanValue());
    }
    if (o != null) {
      paramlxz.a(13, o.doubleValue());
    }
    if (a != null) {
      paramlxz.a(14, a.intValue());
    }
    if (b != null) {
      paramlxz.a(15, b.intValue());
    }
    if (p != null) {
      paramlxz.a(16, p.booleanValue());
    }
    if (q != null) {
      paramlxz.a(17, q);
    }
    if ((r != null) && (r.length > 0))
    {
      int i1 = 0;
      while (i1 < r.length)
      {
        jhz localjhz = r[i1];
        if (localjhz != null) {
          paramlxz.b(18, localjhz);
        }
        i1 += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if (c != null)
    {
      c.floatValue();
      i1 = i2 + (lxz.f(1) + 4);
    }
    i2 = i1;
    if (d != null)
    {
      d.floatValue();
      i2 = i1 + (lxz.f(2) + 4);
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
      i2 = i1 + lxz.b(6, h);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.d(7, i);
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.b(8, j);
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.b(9, k);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.b(10, l);
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.b(11, m);
    }
    i2 = i1;
    if (n != null)
    {
      n.booleanValue();
      i2 = i1 + (lxz.f(12) + 1);
    }
    i1 = i2;
    if (o != null)
    {
      o.doubleValue();
      i1 = i2 + (lxz.f(13) + 8);
    }
    i2 = i1;
    if (a != null) {
      i2 = i1 + lxz.e(14, a.intValue());
    }
    i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.e(15, b.intValue());
    }
    i2 = i1;
    if (p != null)
    {
      p.booleanValue();
      i2 = i1 + (lxz.f(16) + 1);
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + lxz.b(17, q);
    }
    i2 = i1;
    if (r != null)
    {
      i2 = i1;
      if (r.length > 0)
      {
        i2 = 0;
        while (i2 < r.length)
        {
          jhz localjhz = r[i2];
          int i3 = i1;
          if (localjhz != null) {
            i3 = i1 + lxz.d(18, localjhz);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     jhp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */