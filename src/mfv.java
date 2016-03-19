public final class mfv
  extends lyb<mfv>
{
  private static volatile mfv[] r;
  public Long a = null;
  public mfn b = null;
  public Boolean c = null;
  public mfm d = null;
  public byte[] e = null;
  public mfa f = null;
  public String g = null;
  public String[] h = lyo.f;
  public String i = null;
  public String j = null;
  public mfy[] k = mfy.d();
  public lyj l = null;
  public Long m = null;
  public mfw n = null;
  public mft o = null;
  public mff p = null;
  public mfb q = null;
  
  public mfv()
  {
    eD = null;
    eE = -1;
  }
  
  public static mfv[] d()
  {
    if (r == null) {}
    synchronized (lyf.a)
    {
      if (r == null) {
        r = new mfv[0];
      }
      return r;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (e != null) {
      paramlxz.a(1, e);
    }
    if (f != null) {
      paramlxz.b(2, f);
    }
    int i1;
    Object localObject;
    if ((h != null) && (h.length > 0))
    {
      i1 = 0;
      while (i1 < h.length)
      {
        localObject = h[i1];
        if (localObject != null) {
          paramlxz.a(3, (String)localObject);
        }
        i1 += 1;
      }
    }
    if ((k != null) && (k.length > 0))
    {
      i1 = i2;
      while (i1 < k.length)
      {
        localObject = k[i1];
        if (localObject != null) {
          paramlxz.b(4, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (i != null) {
      paramlxz.a(6, i);
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (m != null) {
      paramlxz.b(8, m.longValue());
    }
    if (j != null) {
      paramlxz.a(9, j);
    }
    if (n != null) {
      paramlxz.b(10, n);
    }
    if (o != null) {
      paramlxz.b(11, o);
    }
    if (a != null) {
      paramlxz.b(12, a.longValue());
    }
    if (p != null) {
      paramlxz.b(13, p);
    }
    if (q != null) {
      paramlxz.b(14, q);
    }
    if (c != null) {
      paramlxz.a(16, c.booleanValue());
    }
    if (l != null) {
      paramlxz.b(17, l);
    }
    if (b != null) {
      paramlxz.b(18, b);
    }
    if (d != null) {
      paramlxz.b(19, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i7 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(1, e);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.d(2, f);
    }
    i1 = i2;
    int i3;
    Object localObject;
    if (h != null)
    {
      i1 = i2;
      if (h.length > 0)
      {
        i1 = 0;
        i3 = 0;
        int i5;
        for (int i4 = 0; i1 < h.length; i4 = i5)
        {
          localObject = h[i1];
          int i6 = i3;
          i5 = i4;
          if (localObject != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a((String)localObject);
          }
          i1 += 1;
          i3 = i6;
        }
        i1 = i2 + i3 + i4 * 1;
      }
    }
    i2 = i1;
    if (k != null)
    {
      i2 = i1;
      if (k.length > 0)
      {
        i3 = i7;
        for (;;)
        {
          i2 = i1;
          if (i3 >= k.length) {
            break;
          }
          localObject = k[i3];
          i2 = i1;
          if (localObject != null) {
            i2 = i1 + lxz.d(4, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.b(6, i);
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.b(7, g);
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.e(8, m.longValue());
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.b(9, j);
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.d(10, n);
    }
    i2 = i1;
    if (o != null) {
      i2 = i1 + lxz.d(11, o);
    }
    i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.e(12, a.longValue());
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.d(13, p);
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + lxz.d(14, q);
    }
    i2 = i1;
    if (c != null)
    {
      c.booleanValue();
      i2 = i1 + (lxz.f(16) + 1);
    }
    i1 = i2;
    if (l != null) {
      i1 = i2 + lxz.d(17, l);
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.d(18, b);
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.d(19, d);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     mfv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */