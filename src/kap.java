public final class kap
  extends lyb<kap>
{
  public int[] a = lyo.a;
  public int[] b = lyo.a;
  public Boolean c = null;
  public kdo requestHeader = null;
  
  public kap()
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
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        paramlxz.a(2, a[i]);
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = j;
      while (i < b.length)
      {
        paramlxz.a(3, b[i]);
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(4, c.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b();
    int i = j;
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    int k;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        j = 0;
        k = 0;
        while (j < a.length)
        {
          k += lxz.e(a[j]);
          j += 1;
        }
        j = i + k + a.length * 1;
      }
    }
    i = j;
    if (b != null)
    {
      i = j;
      if (b.length > 0)
      {
        k = 0;
        i = m;
        while (i < b.length)
        {
          k += lxz.e(b[i]);
          i += 1;
        }
        i = j + k + b.length * 1;
      }
    }
    j = i;
    if (c != null)
    {
      c.booleanValue();
      j = i + (lxz.f(4) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */