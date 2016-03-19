public final class kcx
  extends lyb<kcx>
{
  public kcy[] a = kcy.d();
  
  public kcx()
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
        kcy localkcy = a[i];
        if (localkcy != null) {
          paramlxz.b(1, localkcy);
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
          kcy localkcy = a[j];
          k = i;
          if (localkcy != null) {
            k = i + lxz.d(1, localkcy);
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
 * Qualified Name:     kcx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */