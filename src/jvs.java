public final class jvs
  extends lyb<jvs>
{
  public static final lyc<msu, jvs> a = lyc.a(jvs.class, 271416946L);
  private static final jvs[] p = new jvs[0];
  public String b = null;
  public jvv[] c = jvv.d();
  public String[] d = lyo.f;
  public String e = null;
  public Integer f = null;
  public Integer g = null;
  public Long h = null;
  public Long i = null;
  public String j = null;
  public String k = null;
  public Integer l = null;
  public Boolean m = null;
  public String n = null;
  public Boolean o = null;
  
  public jvs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    paramlxz.a(1, b);
    int i1;
    Object localObject;
    if ((d != null) && (d.length > 0))
    {
      i1 = 0;
      while (i1 < d.length)
      {
        localObject = d[i1];
        if (localObject != null) {
          paramlxz.a(4, (String)localObject);
        }
        i1 += 1;
      }
    }
    if (e != null) {
      paramlxz.a(8, e);
    }
    if (h != null) {
      paramlxz.a(9, h.longValue());
    }
    if ((c != null) && (c.length > 0))
    {
      i1 = i2;
      while (i1 < c.length)
      {
        localObject = c[i1];
        if (localObject != null) {
          paramlxz.b(10, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (g != null) {
      paramlxz.c(11, g.intValue());
    }
    if (f != null) {
      paramlxz.c(12, f.intValue());
    }
    if (i != null) {
      paramlxz.a(13, i.longValue());
    }
    if (j != null) {
      paramlxz.a(15, j);
    }
    if (k != null) {
      paramlxz.a(16, k);
    }
    if (l != null) {
      paramlxz.a(17, l.intValue());
    }
    if (m != null) {
      paramlxz.a(18, m.booleanValue());
    }
    if (n != null) {
      paramlxz.a(19, n);
    }
    if (o != null) {
      paramlxz.a(20, o.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i6 = 0;
    int i7 = super.b() + lxz.b(1, b);
    int i2;
    int i3;
    Object localObject;
    if ((d != null) && (d.length > 0))
    {
      i1 = 0;
      i2 = 0;
      int i4;
      for (i3 = 0; i1 < d.length; i3 = i4)
      {
        localObject = d[i1];
        int i5 = i2;
        i4 = i3;
        if (localObject != null)
        {
          i4 = i3 + 1;
          i5 = i2 + lxz.a((String)localObject);
        }
        i1 += 1;
        i2 = i5;
      }
    }
    for (int i1 = i7 + i2 + i3 * 1;; i1 = i7)
    {
      i2 = i1;
      if (e != null) {
        i2 = i1 + lxz.b(8, e);
      }
      i1 = i2;
      if (h != null) {
        i1 = i2 + lxz.d(9, h.longValue());
      }
      i2 = i1;
      if (c != null)
      {
        i2 = i1;
        if (c.length > 0)
        {
          i3 = i6;
          for (;;)
          {
            i2 = i1;
            if (i3 >= c.length) {
              break;
            }
            localObject = c[i3];
            i2 = i1;
            if (localObject != null) {
              i2 = i1 + lxz.d(10, (lyi)localObject);
            }
            i3 += 1;
            i1 = i2;
          }
        }
      }
      i1 = i2;
      if (g != null) {
        i1 = i2 + lxz.f(11, g.intValue());
      }
      i2 = i1;
      if (f != null) {
        i2 = i1 + lxz.f(12, f.intValue());
      }
      i1 = i2;
      if (i != null) {
        i1 = i2 + lxz.d(13, i.longValue());
      }
      i2 = i1;
      if (j != null) {
        i2 = i1 + lxz.b(15, j);
      }
      i1 = i2;
      if (k != null) {
        i1 = i2 + lxz.b(16, k);
      }
      i2 = i1;
      if (l != null) {
        i2 = i1 + lxz.e(17, l.intValue());
      }
      i1 = i2;
      if (m != null)
      {
        m.booleanValue();
        i1 = i2 + (lxz.f(18) + 1);
      }
      i2 = i1;
      if (n != null) {
        i2 = i1 + lxz.b(19, n);
      }
      i1 = i2;
      if (o != null)
      {
        o.booleanValue();
        i1 = i2 + (lxz.f(20) + 1);
      }
      return i1;
    }
  }
}

/* Location:
 * Qualified Name:     jvs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */