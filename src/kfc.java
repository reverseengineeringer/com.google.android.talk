public final class kfc
  extends lyb<kfc>
{
  public kcd[] a = kcd.d();
  
  public kfc()
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
        kcd localkcd = a[i];
        if (localkcd != null) {
          paramlxz.b(1, localkcd);
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
          kcd localkcd = a[j];
          k = i;
          if (localkcd != null) {
            k = i + lxz.d(1, localkcd);
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
 * Qualified Name:     kfc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */