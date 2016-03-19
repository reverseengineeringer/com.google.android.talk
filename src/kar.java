public final class kar
  extends lyb<kar>
{
  public kcr[] a = kcr.d();
  public Integer b = null;
  public Boolean c = null;
  public Boolean d = null;
  public int[] e = lyo.a;
  public kas f = null;
  public kas g = null;
  public kas h = null;
  public kas i = null;
  public kas j = null;
  public kas k = null;
  public byte[][] l = lyo.g;
  public byte[][] m = lyo.g;
  public Boolean n = null;
  public kdo requestHeader = null;
  
  public kar()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    int i1;
    Object localObject;
    if ((l != null) && (l.length > 0))
    {
      i1 = 0;
      while (i1 < l.length)
      {
        localObject = l[i1];
        if (localObject != null) {
          paramlxz.a(2, (byte[])localObject);
        }
        i1 += 1;
      }
    }
    if ((m != null) && (m.length > 0))
    {
      i1 = 0;
      while (i1 < m.length)
      {
        localObject = m[i1];
        if (localObject != null) {
          paramlxz.a(3, (byte[])localObject);
        }
        i1 += 1;
      }
    }
    if (b != null) {
      paramlxz.a(4, b.intValue());
    }
    if (n != null) {
      paramlxz.a(5, n.booleanValue());
    }
    if ((a != null) && (a.length > 0))
    {
      i1 = 0;
      while (i1 < a.length)
      {
        localObject = a[i1];
        if (localObject != null) {
          paramlxz.b(6, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (c != null) {
      paramlxz.a(7, c.booleanValue());
    }
    if (g != null) {
      paramlxz.b(8, g);
    }
    if (h != null) {
      paramlxz.b(9, h);
    }
    if (i != null) {
      paramlxz.b(10, i);
    }
    if (j != null) {
      paramlxz.b(11, j);
    }
    if (k != null) {
      paramlxz.b(12, k);
    }
    if (f != null) {
      paramlxz.b(13, f);
    }
    if (d != null) {
      paramlxz.a(14, d.booleanValue());
    }
    if ((e != null) && (e.length > 0))
    {
      i1 = i2;
      while (i1 < e.length)
      {
        paramlxz.a(15, e[i1]);
        i1 += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i7 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (requestHeader != null) {
      i1 = i2 + lxz.d(1, requestHeader);
    }
    i2 = i1;
    int i4;
    Object localObject;
    int i6;
    int i5;
    if (l != null)
    {
      i2 = i1;
      if (l.length > 0)
      {
        i2 = 0;
        i3 = 0;
        for (i4 = 0; i2 < l.length; i4 = i5)
        {
          localObject = l[i2];
          i6 = i3;
          i5 = i4;
          if (localObject != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a((byte[])localObject);
          }
          i2 += 1;
          i3 = i6;
        }
        i2 = i1 + i3 + i4 * 1;
      }
    }
    i1 = i2;
    if (m != null)
    {
      i1 = i2;
      if (m.length > 0)
      {
        i1 = 0;
        i3 = 0;
        for (i4 = 0; i1 < m.length; i4 = i5)
        {
          localObject = m[i1];
          i6 = i3;
          i5 = i4;
          if (localObject != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a((byte[])localObject);
          }
          i1 += 1;
          i3 = i6;
        }
        i1 = i2 + i3 + i4 * 1;
      }
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.e(4, b.intValue());
    }
    i1 = i2;
    if (n != null)
    {
      n.booleanValue();
      i1 = i2 + (lxz.f(5) + 1);
    }
    i2 = i1;
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
            i3 = i1 + lxz.d(6, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (c != null)
    {
      c.booleanValue();
      i1 = i2 + (lxz.f(7) + 1);
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.d(8, g);
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.d(9, h);
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.d(10, i);
    }
    i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.d(11, j);
    }
    i2 = i1;
    if (k != null) {
      i2 = i1 + lxz.d(12, k);
    }
    int i3 = i2;
    if (f != null) {
      i3 = i2 + lxz.d(13, f);
    }
    i1 = i3;
    if (d != null)
    {
      d.booleanValue();
      i1 = i3 + (lxz.f(14) + 1);
    }
    i2 = i1;
    if (e != null)
    {
      i2 = i1;
      if (e.length > 0)
      {
        i3 = 0;
        i2 = i7;
        while (i2 < e.length)
        {
          i3 += lxz.e(e[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + e.length * 1;
      }
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     kar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */