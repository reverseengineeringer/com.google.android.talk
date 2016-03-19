public final class lqj
  extends lyb<lqj>
{
  public lqf[] a = lqf.d();
  public lqf[] b = lqf.d();
  
  public lqj()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    int i;
    lqf locallqf;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        locallqf = a[i];
        if (locallqf != null) {
          paramlxz.b(4, locallqf);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = j;
      while (i < b.length)
      {
        locallqf = b[i];
        if (locallqf != null) {
          paramlxz.b(5, locallqf);
        }
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
    lqf locallqf;
    if (a != null)
    {
      i = j;
      if (a.length > 0)
      {
        i = j;
        j = 0;
        while (j < a.length)
        {
          locallqf = a[j];
          k = i;
          if (locallqf != null) {
            k = i + lxz.d(4, locallqf);
          }
          j += 1;
          i = k;
        }
      }
    }
    int k = i;
    if (b != null)
    {
      k = i;
      if (b.length > 0)
      {
        j = m;
        for (;;)
        {
          k = i;
          if (j >= b.length) {
            break;
          }
          locallqf = b[j];
          k = i;
          if (locallqf != null) {
            k = i + lxz.d(5, locallqf);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     lqj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */