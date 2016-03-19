public final class kzm
  extends lyb<kzm>
{
  public byte[] a = null;
  public int[] b = lyo.a;
  public byte[][] c = lyo.g;
  public byte[][] d = lyo.g;
  public int[] e = lyo.a;
  public Long f = null;
  
  public kzm()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.a(1, a);
    }
    int i;
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        paramlxz.a(2, b[i]);
        i += 1;
      }
    }
    byte[] arrayOfByte;
    if ((c != null) && (c.length > 0))
    {
      i = 0;
      while (i < c.length)
      {
        arrayOfByte = c[i];
        if (arrayOfByte != null) {
          paramlxz.a(3, arrayOfByte);
        }
        i += 1;
      }
    }
    if ((d != null) && (d.length > 0))
    {
      i = 0;
      while (i < d.length)
      {
        arrayOfByte = d[i];
        if (arrayOfByte != null) {
          paramlxz.a(4, arrayOfByte);
        }
        i += 1;
      }
    }
    if ((e != null) && (e.length > 0))
    {
      i = j;
      while (i < e.length)
      {
        paramlxz.b(5, e[i]);
        i += 1;
      }
    }
    if (f != null) {
      paramlxz.c(6, f.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.b(1, a);
    }
    i = j;
    int k;
    if (b != null)
    {
      i = j;
      if (b.length > 0)
      {
        i = 0;
        k = 0;
        while (i < b.length)
        {
          k += lxz.e(b[i]);
          i += 1;
        }
        i = j + k + b.length * 1;
      }
    }
    j = i;
    int m;
    byte[] arrayOfByte;
    int i1;
    int n;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        j = 0;
        k = 0;
        for (m = 0; j < c.length; m = n)
        {
          arrayOfByte = c[j];
          i1 = k;
          n = m;
          if (arrayOfByte != null)
          {
            n = m + 1;
            i1 = k + lxz.a(arrayOfByte);
          }
          j += 1;
          k = i1;
        }
        j = i + k + m * 1;
      }
    }
    i = j;
    if (d != null)
    {
      i = j;
      if (d.length > 0)
      {
        k = 0;
        m = 0;
        i = i2;
        while (i < d.length)
        {
          arrayOfByte = d[i];
          i1 = k;
          n = m;
          if (arrayOfByte != null)
          {
            n = m + 1;
            i1 = k + lxz.a(arrayOfByte);
          }
          i += 1;
          k = i1;
          m = n;
        }
        i = j + k + m * 1;
      }
    }
    j = i;
    if (e != null)
    {
      j = i;
      if (e.length > 0) {
        j = i + e.length * 4 + e.length * 1;
      }
    }
    i = j;
    if (f != null)
    {
      f.longValue();
      i = j + (lxz.f(6) + 8);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kzm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */