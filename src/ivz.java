public final class ivz
  extends lyb<ivz>
{
  public iwa[] a = iwa.d();
  public int[] b = lyo.a;
  
  public ivz()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    int i;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        iwa localiwa = a[i];
        if (localiwa != null) {
          paramlxz.b(1, localiwa);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = j;
      while (i < b.length)
      {
        paramlxz.a(2, b[i]);
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
    int k;
    if (a != null)
    {
      i = j;
      if (a.length > 0)
      {
        i = j;
        j = 0;
        while (j < a.length)
        {
          iwa localiwa = a[j];
          k = i;
          if (localiwa != null) {
            k = i + lxz.d(1, localiwa);
          }
          j += 1;
          i = k;
        }
      }
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        k = 0;
        j = m;
        while (j < b.length)
        {
          k += lxz.e(b[j]);
          j += 1;
        }
        j = i + k + b.length * 1;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     ivz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */