public final class met
  extends lyb<met>
{
  public int[] a = lyo.a;
  public int[] b = lyo.a;
  
  public met()
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
        paramlxz.a(1, a[i]);
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
    int k = super.b();
    int j;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      j = 0;
      while (i < a.length)
      {
        j += lxz.e(a[i]);
        i += 1;
      }
    }
    for (int i = k + j + a.length * 1;; i = k)
    {
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
}

/* Location:
 * Qualified Name:     met
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */