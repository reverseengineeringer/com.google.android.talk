public final class mgb
  extends lyb<mgb>
{
  public mgc a = null;
  public Boolean b = null;
  public Boolean c = null;
  public String d = null;
  public String[] e = lyo.f;
  public String[] f = lyo.f;
  public Boolean g = null;
  public mgh[] h = mgh.d();
  public Boolean i = null;
  public mgg[] j = mgg.d();
  public Boolean k = null;
  
  public mgb()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int n = 0;
    if (a != null) {
      paramlxz.b(21, a);
    }
    if (b != null) {
      paramlxz.a(25, b.booleanValue());
    }
    if (c != null) {
      paramlxz.a(26, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(27, d);
    }
    int m;
    Object localObject;
    if ((e != null) && (e.length > 0))
    {
      m = 0;
      while (m < e.length)
      {
        localObject = e[m];
        if (localObject != null) {
          paramlxz.a(28, (String)localObject);
        }
        m += 1;
      }
    }
    if ((f != null) && (f.length > 0))
    {
      m = 0;
      while (m < f.length)
      {
        localObject = f[m];
        if (localObject != null) {
          paramlxz.a(29, (String)localObject);
        }
        m += 1;
      }
    }
    if (g != null) {
      paramlxz.a(30, g.booleanValue());
    }
    if ((h != null) && (h.length > 0))
    {
      m = 0;
      while (m < h.length)
      {
        localObject = h[m];
        if (localObject != null) {
          paramlxz.b(31, (lyi)localObject);
        }
        m += 1;
      }
    }
    if (i != null) {
      paramlxz.a(32, i.booleanValue());
    }
    if ((j != null) && (j.length > 0))
    {
      m = n;
      while (m < j.length)
      {
        localObject = j[m];
        if (localObject != null) {
          paramlxz.b(33, (lyi)localObject);
        }
        m += 1;
      }
    }
    if (k != null) {
      paramlxz.a(34, k.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i5 = 0;
    int n = super.b();
    int m = n;
    if (a != null) {
      m = n + lxz.d(21, a);
    }
    n = m;
    if (b != null)
    {
      b.booleanValue();
      n = m + (lxz.f(25) + 1);
    }
    int i1 = n;
    if (c != null)
    {
      c.booleanValue();
      i1 = n + (lxz.f(26) + 1);
    }
    m = i1;
    if (d != null) {
      m = i1 + lxz.b(27, d);
    }
    n = m;
    int i2;
    Object localObject;
    int i4;
    int i3;
    if (e != null)
    {
      n = m;
      if (e.length > 0)
      {
        n = 0;
        i1 = 0;
        for (i2 = 0; n < e.length; i2 = i3)
        {
          localObject = e[n];
          i4 = i1;
          i3 = i2;
          if (localObject != null)
          {
            i3 = i2 + 1;
            i4 = i1 + lxz.a((String)localObject);
          }
          n += 1;
          i1 = i4;
        }
        n = m + i1 + i2 * 2;
      }
    }
    i1 = n;
    if (f != null)
    {
      i1 = n;
      if (f.length > 0)
      {
        m = 0;
        i1 = 0;
        for (i2 = 0; m < f.length; i2 = i3)
        {
          localObject = f[m];
          i4 = i1;
          i3 = i2;
          if (localObject != null)
          {
            i3 = i2 + 1;
            i4 = i1 + lxz.a((String)localObject);
          }
          m += 1;
          i1 = i4;
        }
        i1 = n + i1 + i2 * 2;
      }
    }
    m = i1;
    if (g != null)
    {
      g.booleanValue();
      m = i1 + (lxz.f(30) + 1);
    }
    n = m;
    if (h != null)
    {
      n = m;
      if (h.length > 0)
      {
        n = 0;
        while (n < h.length)
        {
          localObject = h[n];
          i1 = m;
          if (localObject != null) {
            i1 = m + lxz.d(31, (lyi)localObject);
          }
          n += 1;
          m = i1;
        }
        n = m;
      }
    }
    m = n;
    if (i != null)
    {
      i.booleanValue();
      m = n + (lxz.f(32) + 1);
    }
    n = m;
    if (j != null)
    {
      n = m;
      if (j.length > 0)
      {
        i1 = i5;
        for (;;)
        {
          n = m;
          if (i1 >= j.length) {
            break;
          }
          localObject = j[i1];
          n = m;
          if (localObject != null) {
            n = m + lxz.d(33, (lyi)localObject);
          }
          i1 += 1;
          m = n;
        }
      }
    }
    m = n;
    if (k != null)
    {
      k.booleanValue();
      m = n + (lxz.f(34) + 1);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     mgb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */