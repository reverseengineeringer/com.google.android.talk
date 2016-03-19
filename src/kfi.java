public final class kfi
  extends lyb<kfi>
{
  public kfg[] a = kfg.d();
  
  public kfi()
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
        kfg localkfg = a[i];
        if (localkfg != null) {
          paramlxz.b(2, localkfg);
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
          kfg localkfg = a[j];
          k = i;
          if (localkfg != null) {
            k = i + lxz.d(2, localkfg);
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
 * Qualified Name:     kfi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */