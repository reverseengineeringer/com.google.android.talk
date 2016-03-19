public final class kfj
  extends lyb<kfj>
{
  public Long a = null;
  public kbr[] b = kbr.d();
  public kfs[] c = kfs.d();
  public Integer d = null;
  public Boolean e = null;
  public Integer f = null;
  public Integer g = null;
  public byte[][] h = lyo.g;
  public kdo requestHeader = null;
  
  public kfj()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (a != null) {
      paramlxz.a(2, a.longValue());
    }
    int i;
    Object localObject;
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        localObject = b[i];
        if (localObject != null) {
          paramlxz.b(3, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (g != null) {
      paramlxz.a(4, g.intValue());
    }
    if ((h != null) && (h.length > 0))
    {
      i = 0;
      while (i < h.length)
      {
        localObject = h[i];
        if (localObject != null) {
          paramlxz.a(5, (byte[])localObject);
        }
        i += 1;
      }
    }
    if (e != null) {
      paramlxz.a(6, e.booleanValue());
    }
    if ((c != null) && (c.length > 0))
    {
      i = j;
      while (i < c.length)
      {
        localObject = c[i];
        if (localObject != null) {
          paramlxz.b(7, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(8, d.intValue());
    }
    if (f != null) {
      paramlxz.a(9, f.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int i = super.b();
    int j = i;
    if (requestHeader != null) {
      j = i + lxz.d(1, requestHeader);
    }
    i = j;
    if (a != null) {
      i = j + lxz.d(2, a.longValue());
    }
    j = i;
    Object localObject;
    int k;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          localObject = b[j];
          k = i;
          if (localObject != null) {
            k = i + lxz.d(3, (lyi)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (g != null) {
      i = j + lxz.e(4, g.intValue());
    }
    j = i;
    if (h != null)
    {
      j = i;
      if (h.length > 0)
      {
        j = 0;
        k = 0;
        int n;
        for (int m = 0; j < h.length; m = n)
        {
          localObject = h[j];
          int i1 = k;
          n = m;
          if (localObject != null)
          {
            n = m + 1;
            i1 = k + lxz.a((byte[])localObject);
          }
          j += 1;
          k = i1;
        }
        j = i + k + m * 1;
      }
    }
    i = j;
    if (e != null)
    {
      e.booleanValue();
      i = j + (lxz.f(6) + 1);
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        k = i2;
        for (;;)
        {
          j = i;
          if (k >= c.length) {
            break;
          }
          localObject = c[k];
          j = i;
          if (localObject != null) {
            j = i + lxz.d(7, (lyi)localObject);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(8, d.intValue());
    }
    j = i;
    if (f != null) {
      j = i + lxz.e(9, f.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kfj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */