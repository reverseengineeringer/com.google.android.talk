public final class kdt
  extends lyb<kdt>
{
  public String a = null;
  public Integer b = null;
  public Integer c = null;
  public Boolean d = null;
  public Boolean e = null;
  public int[] f = lyo.a;
  public byte[][] g = lyo.g;
  public Boolean h = null;
  public kdo requestHeader = null;
  
  public kdt()
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
    int i;
    if ((g != null) && (g.length > 0))
    {
      i = 0;
      while (i < g.length)
      {
        byte[] arrayOfByte = g[i];
        if (arrayOfByte != null) {
          paramlxz.a(2, arrayOfByte);
        }
        i += 1;
      }
    }
    if (a != null) {
      paramlxz.a(3, a);
    }
    if (b != null) {
      paramlxz.a(4, b.intValue());
    }
    if (h != null) {
      paramlxz.a(5, h.booleanValue());
    }
    if (d != null) {
      paramlxz.a(6, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(7, e.booleanValue());
    }
    if ((f != null) && (f.length > 0))
    {
      i = j;
      while (i < f.length)
      {
        paramlxz.a(8, f[i]);
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(9, c.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int j = super.b();
    int i = j;
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    int k;
    if (g != null)
    {
      j = i;
      if (g.length > 0)
      {
        j = 0;
        k = 0;
        int n;
        for (int m = 0; j < g.length; m = n)
        {
          byte[] arrayOfByte = g[j];
          int i1 = k;
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
    if (a != null) {
      i = j + lxz.b(3, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(4, b.intValue());
    }
    i = j;
    if (h != null)
    {
      h.booleanValue();
      i = j + (lxz.f(5) + 1);
    }
    j = i;
    if (d != null)
    {
      d.booleanValue();
      j = i + (lxz.f(6) + 1);
    }
    i = j;
    if (e != null)
    {
      e.booleanValue();
      i = j + (lxz.f(7) + 1);
    }
    j = i;
    if (f != null)
    {
      j = i;
      if (f.length > 0)
      {
        k = 0;
        j = i2;
        while (j < f.length)
        {
          k += lxz.e(f[j]);
          j += 1;
        }
        j = i + k + f.length * 1;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(9, c.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kdt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */