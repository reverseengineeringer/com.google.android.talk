public final class mll
  extends lyb<mll>
{
  public Integer a = null;
  public Integer b = null;
  public mkp c = null;
  public String d = null;
  public Integer e = null;
  public Long f = null;
  public String g = null;
  public String h = null;
  public String[] i = lyo.f;
  public Boolean j = null;
  public String k = null;
  public Integer l = null;
  public String m = null;
  public String n = null;
  public String o = null;
  public Boolean p = null;
  public Boolean q = null;
  
  public mll()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.d(1, a.intValue());
    }
    if (b != null) {
      paramlxz.d(2, b.intValue());
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (e != null) {
      paramlxz.a(e.intValue());
    }
    if (f != null) {
      paramlxz.a(f.longValue());
    }
    if (j != null) {
      paramlxz.a(6, j.booleanValue());
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (k != null) {
      paramlxz.a(8, k);
    }
    if (l != null) {
      paramlxz.a(9, l.intValue());
    }
    if (m != null) {
      paramlxz.a(10, m);
    }
    if (c != null) {
      paramlxz.b(11, c);
    }
    if (n != null) {
      paramlxz.a(12, n);
    }
    if (h != null) {
      paramlxz.a(13, h);
    }
    if (o != null) {
      paramlxz.a(14, o);
    }
    if ((i != null) && (i.length > 0))
    {
      int i1 = 0;
      while (i1 < i.length)
      {
        String str = i[i1];
        if (str != null) {
          paramlxz.a(16, str);
        }
        i1 += 1;
      }
    }
    if (p != null) {
      paramlxz.a(17, p.booleanValue());
    }
    if (q != null) {
      paramlxz.a(18, q.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i5 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (a != null)
    {
      a.intValue();
      i1 = i2 + (lxz.f(1) + 4);
    }
    i2 = i1;
    if (b != null)
    {
      b.intValue();
      i2 = i1 + (lxz.f(2) + 4);
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.b(3, d);
    }
    i2 = i1;
    if (e != null)
    {
      i2 = e.intValue();
      i3 = lxz.f(4);
      i2 = i1 + (lxz.h(lxz.i(i2)) + i3);
    }
    i1 = i2;
    if (f != null)
    {
      long l1 = f.longValue();
      i1 = lxz.f(5);
      i1 = i2 + (lxz.b(lxz.c(l1)) + i1);
    }
    i2 = i1;
    if (j != null)
    {
      j.booleanValue();
      i2 = i1 + (lxz.f(6) + 1);
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.b(7, g);
    }
    i2 = i1;
    if (k != null) {
      i2 = i1 + lxz.b(8, k);
    }
    i1 = i2;
    if (l != null) {
      i1 = i2 + lxz.e(9, l.intValue());
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.b(10, m);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.d(11, c);
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.b(12, n);
    }
    int i3 = i2;
    if (h != null) {
      i3 = i2 + lxz.b(13, h);
    }
    i1 = i3;
    if (o != null) {
      i1 = i3 + lxz.b(14, o);
    }
    i2 = i1;
    if (i != null)
    {
      i2 = i1;
      if (i.length > 0)
      {
        i3 = 0;
        int i4 = 0;
        i2 = i5;
        while (i2 < i.length)
        {
          String str = i[i2];
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
        i2 = i1 + i3 + i4 * 2;
      }
    }
    i1 = i2;
    if (p != null)
    {
      p.booleanValue();
      i1 = i2 + (lxz.f(17) + 1);
    }
    i2 = i1;
    if (q != null)
    {
      q.booleanValue();
      i2 = i1 + (lxz.f(18) + 1);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     mll
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */