public final class jwk
  extends lyb<jwk>
{
  public jwq[] a = jwq.d();
  public Integer b = null;
  public String c = null;
  public String[] d = lyo.f;
  public String e = null;
  public Integer f = null;
  public Integer g = null;
  public Integer h = null;
  public Integer i = null;
  public Integer j = null;
  public Integer k = null;
  public Integer l = null;
  public Integer m = null;
  public String n = null;
  
  public jwk()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    int i1;
    Object localObject;
    if ((a != null) && (a.length > 0))
    {
      i1 = 0;
      while (i1 < a.length)
      {
        localObject = a[i1];
        if (localObject != null) {
          paramlxz.b(1, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (c != null) {
      paramlxz.a(2, c);
    }
    if ((d != null) && (d.length > 0))
    {
      i1 = i2;
      while (i1 < d.length)
      {
        localObject = d[i1];
        if (localObject != null) {
          paramlxz.a(3, (String)localObject);
        }
        i1 += 1;
      }
    }
    if (e != null) {
      paramlxz.a(4, e);
    }
    if (f != null) {
      paramlxz.a(5, f.intValue());
    }
    if (g != null) {
      paramlxz.a(6, g.intValue());
    }
    if (h != null) {
      paramlxz.a(7, h.intValue());
    }
    if (i != null) {
      paramlxz.a(8, i.intValue());
    }
    if (j != null) {
      paramlxz.a(9, j.intValue());
    }
    if (k != null) {
      paramlxz.a(10, k.intValue());
    }
    if (l != null) {
      paramlxz.a(11, l.intValue());
    }
    if (m != null) {
      paramlxz.a(12, m.intValue());
    }
    if (n != null) {
      paramlxz.a(13, n);
    }
    if (b != null) {
      paramlxz.a(14, b.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i5 = 0;
    int i1 = super.b();
    int i2 = i1;
    Object localObject;
    int i3;
    if (a != null)
    {
      i2 = i1;
      if (a.length > 0)
      {
        i2 = 0;
        while (i2 < a.length)
        {
          localObject = a[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(1, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.b(2, c);
    }
    i2 = i1;
    if (d != null)
    {
      i2 = i1;
      if (d.length > 0)
      {
        i3 = 0;
        int i4 = 0;
        i2 = i5;
        while (i2 < d.length)
        {
          localObject = d[i2];
          int i6 = i3;
          i5 = i4;
          if (localObject != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a((String)localObject);
          }
          i2 += 1;
          i3 = i6;
          i4 = i5;
        }
        i2 = i1 + i3 + i4 * 1;
      }
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(4, e);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.e(5, f.intValue());
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.e(6, g.intValue());
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.e(7, h.intValue());
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.e(8, i.intValue());
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.e(9, j.intValue());
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.e(10, k.intValue());
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.e(11, l.intValue());
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.e(12, m.intValue());
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.b(13, n);
    }
    i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.e(14, b.intValue());
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     jwk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */