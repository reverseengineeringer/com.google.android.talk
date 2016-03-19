public final class kbo
  extends lyb<kbo>
{
  public kbn[] a = kbn.d();
  
  public kbo()
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
        kbn localkbn = a[i];
        if (localkbn != null) {
          paramlxz.b(1, localkbn);
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
          kbn localkbn = a[j];
          k = i;
          if (localkbn != null) {
            k = i + lxz.d(1, localkbn);
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
 * Qualified Name:     kbo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */