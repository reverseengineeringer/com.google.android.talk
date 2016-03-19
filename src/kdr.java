public final class kdr
  extends lyb<kdr>
{
  public kdq[] a = kdq.d();
  
  public kdr()
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
        kdq localkdq = a[i];
        if (localkdq != null) {
          paramlxz.b(1, localkdq);
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
          kdq localkdq = a[j];
          k = i;
          if (localkdq != null) {
            k = i + lxz.d(1, localkdq);
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
 * Qualified Name:     kdr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */