public final class jyb
  extends lyb<jyb>
{
  public jxw a = null;
  public kbi[] b = kbi.d();
  public Integer c = null;
  public String d = null;
  public byte[][] e = lyo.g;
  
  public jyb()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.b(1, a);
    }
    int i;
    Object localObject;
    if ((e != null) && (e.length > 0))
    {
      i = 0;
      while (i < e.length)
      {
        localObject = e[i];
        if (localObject != null) {
          paramlxz.a(2, (byte[])localObject);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = j;
      while (i < b.length)
      {
        localObject = b[i];
        if (localObject != null) {
          paramlxz.b(3, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(4, c.intValue());
    }
    if (d != null) {
      paramlxz.a(5, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.d(1, a);
    }
    i = j;
    int k;
    Object localObject;
    if (e != null)
    {
      i = j;
      if (e.length > 0)
      {
        i = 0;
        k = 0;
        int n;
        for (int m = 0; i < e.length; m = n)
        {
          localObject = e[i];
          int i1 = k;
          n = m;
          if (localObject != null)
          {
            n = m + 1;
            i1 = k + lxz.a((byte[])localObject);
          }
          i += 1;
          k = i1;
        }
        i = j + k + m * 1;
      }
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        k = i2;
        for (;;)
        {
          j = i;
          if (k >= b.length) {
            break;
          }
          localObject = b[k];
          j = i;
          if (localObject != null) {
            j = i + lxz.d(3, (lyi)localObject);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(4, c.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(5, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jyb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */