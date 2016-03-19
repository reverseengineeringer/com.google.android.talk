public final class lqi
  extends lyb<lqi>
{
  public lqf[] a = lqf.d();
  
  public lqi()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        lqf locallqf = a[i];
        if (locallqf != null) {
          paramlxz.b(2, locallqf);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int k = i;
    if (a != null)
    {
      k = i;
      if (a.length > 0)
      {
        int j = 0;
        for (;;)
        {
          k = i;
          if (j >= a.length) {
            break;
          }
          lqf locallqf = a[j];
          k = i;
          if (locallqf != null) {
            k = i + lxz.d(2, locallqf);
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
 * Qualified Name:     lqi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */