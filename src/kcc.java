public final class kcc
  extends lyb<kcc>
{
  public Integer a = null;
  public kcr[] b = kcr.d();
  public Integer c = null;
  public byte[][] d = lyo.g;
  
  public kcc()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    int i;
    Object localObject;
    if ((d != null) && (d.length > 0))
    {
      i = 0;
      while (i < d.length)
      {
        localObject = d[i];
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
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = 0;
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.e(1, a.intValue());
    }
    i = j;
    int k;
    Object localObject;
    if (d != null)
    {
      i = j;
      if (d.length > 0)
      {
        i = 0;
        k = 0;
        int n;
        for (int m = 0; i < d.length; m = n)
        {
          localObject = d[i];
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
    return i;
  }
}

/* Location:
 * Qualified Name:     kcc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */