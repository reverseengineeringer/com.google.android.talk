public final class jui
  extends lyb<jui>
{
  public String a = null;
  public String b = null;
  public Integer c = null;
  public Integer d = null;
  public Long e = null;
  public Long f = null;
  public String g = null;
  public String h = null;
  public juk[] i = juk.d();
  public Boolean j = null;
  public Integer k = null;
  public Integer l = null;
  public String m = null;
  public Integer n = null;
  public String o = null;
  public Integer p = null;
  public juj q = null;
  public Long r = null;
  public jup[] s = jup.d();
  
  public jui()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    paramlxz.a(1, a);
    paramlxz.a(2, b);
    paramlxz.a(3, c.intValue());
    if (g != null) {
      paramlxz.a(4, g);
    }
    int i1;
    Object localObject;
    if ((i != null) && (i.length > 0))
    {
      i1 = 0;
      while (i1 < i.length)
      {
        localObject = i[i1];
        if (localObject != null) {
          paramlxz.a(5, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (j != null) {
      paramlxz.a(28, j.booleanValue());
    }
    if (k != null) {
      paramlxz.a(29, k.intValue());
    }
    if (l != null) {
      paramlxz.a(30, l.intValue());
    }
    if (r != null) {
      paramlxz.b(42, r.longValue());
    }
    if (h != null) {
      paramlxz.a(43, h);
    }
    if ((s != null) && (s.length > 0))
    {
      i1 = i2;
      while (i1 < s.length)
      {
        localObject = s[i1];
        if (localObject != null) {
          paramlxz.b(52, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (p != null) {
      paramlxz.a(68, p.intValue());
    }
    if (q != null) {
      paramlxz.b(69, q);
    }
    if (o != null) {
      paramlxz.a(100, o);
    }
    if (f != null) {
      paramlxz.b(104, f.longValue());
    }
    if (d != null) {
      paramlxz.a(105, d.intValue());
    }
    if (n != null) {
      paramlxz.a(106, n.intValue());
    }
    if (e != null) {
      paramlxz.b(107, e.longValue());
    }
    if (m != null) {
      paramlxz.a(112, m);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i4 = 0;
    int i2 = super.b() + lxz.b(1, a) + lxz.b(2, b) + lxz.e(3, c.intValue());
    int i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.b(4, g);
    }
    i2 = i1;
    Object localObject;
    int i3;
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
            i3 = i1 + lxz.c(5, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (j != null)
    {
      j.booleanValue();
      i1 = i2 + (lxz.f(28) + 1);
    }
    i2 = i1;
    if (k != null) {
      i2 = i1 + lxz.e(29, k.intValue());
    }
    i1 = i2;
    if (l != null) {
      i1 = i2 + lxz.e(30, l.intValue());
    }
    i2 = i1;
    if (r != null) {
      i2 = i1 + lxz.e(42, r.longValue());
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.b(43, h);
    }
    i2 = i1;
    if (s != null)
    {
      i2 = i1;
      if (s.length > 0)
      {
        i3 = i4;
        for (;;)
        {
          i2 = i1;
          if (i3 >= s.length) {
            break;
          }
          localObject = s[i3];
          i2 = i1;
          if (localObject != null) {
            i2 = i1 + lxz.d(52, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (p != null) {
      i1 = i2 + lxz.e(68, p.intValue());
    }
    i2 = i1;
    if (q != null) {
      i2 = i1 + lxz.d(69, q);
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.b(100, o);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.e(104, f.longValue());
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.e(105, d.intValue());
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.e(106, n.intValue());
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.e(107, e.longValue());
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.b(112, m);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     jui
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */