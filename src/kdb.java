public final class kdb
  extends lyb<kdb>
{
  public kcr[] a = kcr.d();
  public int[] b = lyo.a;
  public kdo requestHeader = null;
  
  public kdb()
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
        kcr localkcr = a[i];
        if (localkcr != null) {
          paramlxz.b(2, localkcr);
        }
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
        while (j < a.length)
        {
          kcr localkcr = a[j];
          k = i;
          if (localkcr != null) {
            k = i + lxz.d(2, localkcr);
          }
          j += 1;
          i = k;
        }
        j = i;
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
    return i;
  }
}

/* Location:
 * Qualified Name:     kdb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */