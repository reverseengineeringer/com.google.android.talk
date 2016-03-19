public final class kai
  extends lyb<kai>
{
  public jzi[] a = jzi.d();
  public int[] b = lyo.a;
  public jzi c = null;
  public kdo requestHeader = null;
  
  public kai()
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
    if (c != null) {
      paramlxz.b(2, c);
    }
    int i;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        jzi localjzi = a[i];
        if (localjzi != null) {
          paramlxz.b(3, localjzi);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = j;
      while (i < b.length)
      {
        paramlxz.a(4, b[i]);
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int i = super.b();
    int j = i;
    if (requestHeader != null) {
      j = i + lxz.d(1, requestHeader);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(2, c);
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
          jzi localjzi = a[j];
          k = i;
          if (localjzi != null) {
            k = i + lxz.d(3, localjzi);
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
 * Qualified Name:     kai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */